import { Link } from "react-router";
import * as projects from './projects'

function GameLibrary() {
  return (
    <div style={{ display: 'flex', flexWrap: 'wrap', overflowY: 'auto', overflowX: 'clip', width: '80%', justifyContent: 'center' }}>
      {Object.entries(projects).map(([id, { title, logo }]) => (
        <Link key={id} to={`./${id}`} style={{ display: 'flex', flexDirection: 'column', margin: '1rem', width: '10%', minWidth: '100px', textDecoration: 'unset' }}>
          <img src={logo} alt={title} />
          <span>{title}</span>
        </Link>
      ))}
    </div>
  )
}

export function App() {
  return (
    <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyItems: 'center', maxHeight: '100%' }}>
      <h1>Game library</h1>
      <GameLibrary />
    </div>
  )
}
