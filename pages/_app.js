import 'styles/main.css'
import { Teko } from "next/font/google"

// Note:
// Just renaming $$default to ResApp alone
// doesn't help FastRefresh to detect the
// React component, since an alias isn't attached
// to the original React component function name.
import ResApp from "src/App.mjs"

// https://fonts.google.com/specimen/Teko?query=teko
const teko = Teko({
  weight: ["400", "500", "600", "700"], // regular="400", medium="500", semi-bold="600", bold="700"
  display: "swap",
  subsets: ["devanagari"]
})

// Note:
// We need to wrap the make call with
// a Fast-Refresh conform function name,
// (in this case, uppercased first letter)
//
// If you don't do this, your Fast-Refresh will
// not work!
export default function App(props) {
  return (
    <div className={teko.className}>
      <ResApp {...props}/>
    </div>
  )
}
