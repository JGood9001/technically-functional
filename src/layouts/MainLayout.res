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
        <Link href="/"> <span className="hover:border-b-4 hover:border-brand">{React.string("Home")}</span></Link>
        <Link href="/about"> <span className="hover:border-b-4 hover:border-brand"> {React.string("About")} </span> </Link>
        <Link href="/blog"> <span className="hover:border-b-4 hover:border-brand"> {React.string("Blog")} </span> </Link>
      </div>
    </nav>
    </>
}

@react.component
let make = (~children) => {
  <div className="relative flex pl-8 pr-8 sm:pl-20 sm:pr-20 justify-center">
    <div className="w-full h-screen md:max-w-192 text-dark font-base">
      <Navigation />
      <main className="mt-16 border">
        children
      </main>
    </div>
  </div>
}
