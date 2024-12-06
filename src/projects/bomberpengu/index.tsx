import { lazy } from 'react'
import logo from './logo.png'

export const title = "BomberPengu"
export const description = ""
export const Render = lazy(() => import("./render.tsx"))

export { logo }