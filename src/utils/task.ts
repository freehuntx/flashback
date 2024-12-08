export class Task<T> {
  private abortController: AbortController;
  private promise: Promise<T>;
  private executing: boolean = false;

  constructor(
    executor: (
      resolve: (value: T | PromiseLike<T>) => void,
      reject: (reason?: any) => void,
      signal: AbortSignal
    ) => void
  ) {
    this.abortController = new AbortController();
    
    this.promise = new Promise<T>((resolve, reject) => {
      this.executing = true;

      // Handle abort signals
      this.abortController.signal.addEventListener('abort', () => {
        this.executing = false;
        reject(new Error('Task aborted'));
      });

      try {
        executor(
          (value) => {
            if (!this.abortController.signal.aborted) {
              this.executing = false;
              resolve(value);
            }
          },
          (reason) => {
            if (!this.abortController.signal.aborted) {
              this.executing = false;
              reject(reason);
            }
          },
          this.abortController.signal
        );
      } catch (error) {
        if (!this.abortController.signal.aborted) {
          this.executing = false;
          reject(error);
        }
      }
    });
  }

  public abort(): void {
    if (this.executing) {
      this.abortController.abort();
    }
  }

  public then<TResult1 = T, TResult2 = never>(
    onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | null,
    onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | null
  ): Promise<TResult1 | TResult2> {
    return this.promise.then(onfulfilled, onrejected);
  }

  public catch<TResult = never>(
    onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | null
  ): Promise<T | TResult> {
    return this.promise.catch(onrejected);
  }

  public finally(onfinally?: (() => void) | null): Promise<T> {
    return this.promise.finally(onfinally);
  }
}