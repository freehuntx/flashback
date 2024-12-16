export class TypedEventTarget<T extends { [K: string]: (e: any) => void }> extends EventTarget {
  override addEventListener<K extends keyof T>(
    type: K,
    listener: T[K] | null,
    options?: boolean | AddEventListenerOptions
  ): void {
    super.addEventListener(type as string, listener as EventListener, options)
  }

  override removeEventListener<K extends keyof T>(
    type: K,
    listener: T[K] | null,
    options?: boolean | EventListenerOptions
  ): void {
    super.removeEventListener(type as string, listener as EventListener, options)
  }
}
