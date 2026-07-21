export type Unsubscribe = () => void

type Listener = (...args: never[]) => void
type EventMap = Record<string, Listener>

/**
 * Minimal, fully typed event emitter.
 * Listener errors are isolated so one broken listener can't kill the pipeline.
 */
export class Emitter<Events extends EventMap> {
  #listeners = new Map<keyof Events, Set<Events[keyof Events]>>()

  on<K extends keyof Events>(event: K, listener: Events[K]): Unsubscribe {
    let set = this.#listeners.get(event)
    if (!set) this.#listeners.set(event, (set = new Set()))
    set.add(listener)
    return () => this.off(event, listener)
  }

  once<K extends keyof Events>(event: K, listener: Events[K]): Unsubscribe {
    const off = this.on(event, ((...args: Parameters<Events[K]>) => {
      off()
      ;(listener as (...a: Parameters<Events[K]>) => void)(...args)
    }) as Events[K])
    return off
  }

  off<K extends keyof Events>(event: K, listener: Events[K]): void {
    this.#listeners.get(event)?.delete(listener)
  }

  protected emit<K extends keyof Events>(event: K, ...args: Parameters<Events[K]>): void {
    const set = this.#listeners.get(event)
    if (!set) return
    for (const listener of [...set]) {
      try {
        ;(listener as (...a: Parameters<Events[K]>) => void)(...args)
      } catch (err) {
        console.error(`[flashnet] Unhandled error in "${String(event)}" listener:`, err)
      }
    }
  }

  protected clearListeners(): void {
    this.#listeners.clear()
  }
}
