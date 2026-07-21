// Core: Ruffle traffic interception
export { VirtualNetwork } from './virtual-network.ts'
export type {
  VirtualNetworkOptions,
  SocketHandler,
  HttpMatcher,
  HttpHandler,
  VirtualHttpResponse,
  RuffleSocketProxy,
} from './virtual-network.ts'
export { VirtualSocket, pipe, socketPair, toBytes } from './socket.ts'
export type { Socket, SocketEvents } from './socket.ts'

// Bridges: connection to other players
export type { Bridge, BridgeEvents } from './bridge/bridge.ts'
export { BaseBridge } from './bridge/bridge.ts'
export { loopbackBridge } from './bridge/loopback.ts'
export { broadcastChannelBridge } from './bridge/broadcast-channel.ts'
export type { BroadcastChannelBridgeOptions } from './bridge/broadcast-channel.ts'
export { trysteroBridge } from './bridge/trystero.ts'
export type { TrysteroBridgeOptions, TrysteroRoomLike } from './bridge/trystero.ts'
export { playerioBridge } from './bridge/playerio.ts'
export type {
  PlayerIOBridgeOptions,
  PlayerIOConnectionLike,
  PlayerIOMessageLike,
  PlayerIORelayProtocol,
} from './bridge/playerio.ts'

// Optional: socket tunneling for host-authoritative games
export { withTunnel } from './tunnel.ts'
export type { Tunnel, TunnelMeta, WithTunnelResult } from './tunnel.ts'

// Optional: protocol framing on top of any Socket
export { framed, xmlSocket, delimited, nullTerminated, lengthPrefixed, text, MessageSocket } from './framing.ts'
export type { Framer, Codec, FramerOptions, LengthPrefixedOptions, MessageSocketEvents } from './framing.ts'

// Game framework: host election, socket routing, migration
export { createSession, defineGame, GameSession } from './game/session.ts'
export type {
  GameDefinition,
  GameServer,
  GameServerContext,
  GameSessionOptions,
  GameSessionEvents,
} from './game/session.ts'

// Utilities
export { Emitter } from './events.ts'
export type { Unsubscribe } from './events.ts'
