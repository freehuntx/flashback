import { games } from "./games.ts";

const grid = document.getElementById("games")!;

for (const game of games) {
  const card = document.createElement("a");
  card.className = "card";
  card.href = game.path;
  card.innerHTML = `
    <div class="cover"><img src="${game.cover}" alt="" loading="lazy" /></div>
    <div class="body">
      <h2>${game.title}</h2>
      <p class="meta">${game.players}${
    game.publisher ? ` · ${game.publisher}` : ""
  }</p>
      <p class="desc">${game.description}</p>
    </div>`;
  // Don't navigate to the game when the "original" link is clicked.
  card.querySelector(".original")?.addEventListener(
    "click",
    (ev) => ev.stopPropagation(),
  );
  grid.appendChild(card);
}
