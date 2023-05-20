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
    <nav className="relative z-10 p-2 h-12 flex border-b border-gray-200 justify-between items-center text-sm">
      <Link href="/">
          <span className="flex text-xl font-normal"> // ml-2 align-middle font-semibold">
            <span>{React.string("Technically")}</span>
            <span className="text-orange-800"> {React.string("Functional")} </span>
          </span>
      </Link>
      <div className="flex w-2/3 justify-end">
        <Link href="/"> {React.string("Home")} </Link>
        <Link href="/about"> {React.string("About")} </Link>
        <Link href="/blog"> {React.string("Blog")} </Link>
        // Link with embedded a tag is deprecated
        // <Link href="/examples"> <a className="px-3"> {React.string("Examples")} </a> </Link>
        <a
          className="px-3 font-bold"
          target="_blank"
          href="https://github.com/ryyppy/nextjs-default">
          {React.string("Github")}
        </a>
      </div>
    </nav>
    </>
}

@react.component
let make = (~children) => {
  let minWidth = ReactDOM.Style.make(~minWidth="20rem", ())
  <div style=minWidth className="flex lg:justify-center">
    <div className="max-w-5xl w-full lg:w-3/4 text-gray-900 font-base">
      <Navigation /> <main className="mt-4 mx-4"> children </main>
    </div>
  </div>
}
