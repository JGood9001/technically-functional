module Link = Next.Link
module Head = Next.Head

module Navigation = {
  @react.component
  let make = () => <>
    <Head>
      <link
        rel="stylesheet"
        href="https://unpkg.com/prism-themes@1.9.0/themes/prism-holi-theme.min.css"
      ></link>
    </Head>
    <nav className="relative z-10 p-2 pt-8 h-12 flex justify-between items-center text-sm">
      <Link href="/">
          <span className="text-2xl font-semibold">{React.string("Technically Functional")}</span>
      </Link>
      <div className="flex w-40 justify-between text-lg font-normal"> // border border-gray-200
        <Link href="/"> {React.string("Home")} </Link>
        <Link href="/about"> {React.string("About")} </Link>
        <Link href="/blog"> {React.string("Blog")} </Link>
      </div>
    </nav>
    </>
}

@react.component
let make = (~children) => {
  let minWidth = ReactDOM.Style.make(~minWidth="20rem", ())
  <div style=minWidth className="flex lg:justify-center">
   // TODO: Adjust this w-192 width to be responsive... (controls the width of the content on the
   // page)
    <div className="max-w-5xl w-192 lg:w-3/4 text-gray-900 font-base">
      <Navigation /> <main className="mt-4 mx-4"> children </main>
    </div>
  </div>
}
