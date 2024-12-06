import { useEffect, useRef } from "react";

export function useFixedMemo<T>(factory: () => T, deps: React.DependencyList): T {
  const ref = useRef<T>(factory())
  const mountRef = useRef(false)

  useEffect(() => {
    if (mountRef.current === false) {
      mountRef.current = true
      return
    }

    const res = factory()
    if (ref.current !== res) ref.current = res
  }, deps)

  return ref.current
}