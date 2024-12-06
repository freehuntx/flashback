import { EffectCallback, useEffect, useRef } from 'react';

export function useOnMount(callback: EffectCallback) {
  const hasMounted = useRef(false);

  useEffect(() => {
    if (!hasMounted.current) {
      hasMounted.current = true;
      return callback();
    }
  }, []);
};
