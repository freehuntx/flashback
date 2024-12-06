import { lazy, StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import { BrowserRouter, Routes, Route } from "react-router"
import { App } from "./App"

// Project lazy loading components
const BomberPengu = lazy(() => import("./projects/bomberpengu"))

// Root rendering
const rootEl = document.getElementById('root')!
const root = createRoot(rootEl)

root.render(
  <StrictMode>
    <BrowserRouter basename={import.meta.env.BASE_URL}>
      <Routes>
        <Route path="/" element={<App />} />
        <Route path="/bomberpengu" element={<BomberPengu />} />
      </Routes>
    </BrowserRouter>
  </StrictMode>
)
