import { useFixedEffect } from "@/hooks/effect";
import { useRef, useState } from "react";

export interface FlashplayerProps	extends React.ObjectHTMLAttributes<HTMLObjectElement> {
	config: RuffleConfig;
	children?: React.ReactNode;
}

export function Flashplayer({ config, ...props }: FlashplayerProps) {
  const [player] = useState(window.RufflePlayer.newest().createPlayer())
  const containerRef = useRef<HTMLDivElement>(null);

  Object.assign(player.style, {
    display: 'block',
    width: '100%',
    height: '100%'
  })

  useFixedEffect(() => {
    if (!containerRef.current) return

    containerRef.current.appendChild(player);

    return () => {
      containerRef.current?.removeChild(player);
    }
  }, [containerRef])

  useFixedEffect(() => {
    player.load(config)
  }, [config])

  return <div ref={containerRef} {...props} />
}
