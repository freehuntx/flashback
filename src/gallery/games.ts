/** Everything the gallery needs to know about a game. */
export interface GameEntry {
  id: string;
  title: string;
  description: string;
  /** Cover image, relative to the site root. */
  cover: string;
  /** Page to open when clicked, relative to the site root. */
  path: string;
  players: string;
  publisher?: string;
}

export const games: GameEntry[] = [
  {
    id: "stickarena-dimensions",
    title: "Stick Arena: Dimensions",
    description:
      "Top-down multiplayer deathmatch. Grab a bat, glock or railgun and rack " +
      "up kills in 5-minute rounds - with accounts, the shop, cred tickets " +
      "and vote-kicks all working like back in the day.",
    cover: "covers/stickarena-dimensions.png",
    path: "games/stickarena-dimensions/",
    players: "2-6 players",
    publisher: "XGen Studios",
  },
  {
    id: "bomberpengu",
    title: "BomberPengu",
    description:
      "Head-to-head bomberman with penguins. Trap your opponent, kick bombs " +
      "across the ice and collect power-ups in quick one-on-one matches.",
    cover: "covers/bomberpengu.png",
    path: "games/bomberpengu/",
    players: "2 players",
  },
  {
    id: "minigolf-tropical-island",
    title: "Minigolf: Tropical Island",
    description:
      "Relaxed multiplayer minigolf on a sunny island - 18 holes, a lobby " +
      "with chat, and rematches until someone finally makes that hole-in-one.",
    cover: "covers/minigolf-tropical-island.png",
    path: "games/minigolf-tropical-island/",
    players: "2-4 players",
  },
];
