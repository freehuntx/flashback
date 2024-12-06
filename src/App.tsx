import { Link } from "react-router";

export function App() {
  return (
    <table>
      <thead>
        <tr>
          <th>Title</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><Link to="/bomberpengu">Bomberpengu</Link></td>
        </tr>
      </tbody>
    </table>
  )
}
