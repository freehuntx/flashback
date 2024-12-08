import { useEffect, useRef } from 'react';

export interface FlashplayerProps extends React.ComponentProps<"div"> {
  config: Ruffle.Config;
  width?: string | number
  height?: string | number
}

export function Flashplayer({ config, style, className, ...props }: FlashplayerProps) {
  const placeholderRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const { current: placeHolder } = placeholderRef;
    if (!placeHolder || !config) return

    const player = window.RufflePlayer.newest().createPlayer();
    
    // Apply styles and other props to the player
    if (style) Object.assign(player.style, style);
    if (className) player.className = className;

    // Apply any other HTML attributes
    const eventListeners: {eventName: string, listener: EventListener}[] = [];
    Object.entries(props).forEach(([key, value]) => {
      if (key.startsWith('on')) {
        const eventName = key.toLowerCase().substring(2);
        player.addEventListener(eventName, value as EventListener);
        eventListeners.push({eventName, listener: value as EventListener});
      } else {
        player.setAttribute(key, value as string);
      }
    });
    
    placeHolder.replaceWith(player)

    player.load(config)

    return () => {
      // Remove event listeners
      eventListeners.forEach(({eventName, listener}) => {
        player.removeEventListener(eventName, listener);
      });
      
      player.replaceWith(placeHolder);
    }
  }, [config, style, className, props])

  return <div ref={placeholderRef} />;
}
