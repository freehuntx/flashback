import { createRoot } from 'react-dom/client'
import { BrowserRouter, Routes, Route } from "react-router"
import { App } from "./App"
import * as projects from './projects'

if (import.meta.hot) {
  import.meta.hot.on('vite:beforeUpdate', () => {
    window.location.reload();
  });
}

// Root rendering
const rootEl = document.getElementById('root')!
const root = createRoot(rootEl)

root.render(
  <BrowserRouter basename={import.meta.env.BASE_URL}>
    <Routes>
      <Route path="/" element={<App />} />
      {Object.entries(projects).map(([id, { Render }]) => (
        <Route key={id} path={`/${id}`} element={<Render />} />
      ))}
    </Routes>
  </BrowserRouter>
)
