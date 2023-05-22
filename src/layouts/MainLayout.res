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
    <nav className="relative w-full z-10 pt-8 h-12 flex justify-between align-top">
      <Link href="/">
        <div className="flex flex-col">
          <span className="text-lg sm:text-xl md:text-2xl font-semibold border-b-4 border-brand">{React.string("Technically")}</span>
          <span className="text-lg sm:text-xl md:text-2xl font-semibold border-b-4 border-brand">{React.string("Functional")}</span>
        </div>
      </Link>
      <div className="flex gap-4 md:gap-12 justify-between sm:text-md md:text-lg font-normal"> // border border-gray-200
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
  <div style=minWidth className="flex pl-8 pr-8 sm:pl-20 sm:pr-20 justify-center">
   // TODO: Adjust this w-192 width to be responsive... (controls the width of the content on the
   // page)
    <div className="w-full md:max-w-192 lg:w-3/4 text-gray-900 font-base">
      <Navigation /> <main className=""> children </main>
    </div>
  </div>
}
