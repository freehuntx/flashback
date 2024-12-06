import { EffectCallback, useEffect, useRef } from "react";

export function useFixedEffect(callback: EffectCallback, deps?: React.DependencyList) {
  const ref = useRef(false)

  useEffect(() => {
    if (!ref.current) {
      ref.current = true
      return
    }

    return callback()
  }, deps)
}