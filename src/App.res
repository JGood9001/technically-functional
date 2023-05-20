// This type is based on the getInitialProps return value.
// If you are using getServerSideProps or getStaticProps, you probably
// will never need this
// See https://nextjs.org/docs/advanced-features/custom-app
type pageProps

// type next_font = { className: string }
// type opts = { weight: string }
// @module("@next/font/google") external teko: opts => next_font = "Teko"

module PageComponent = {
  type t = React.component<pageProps>
}

type props = {
  @as("Component")
  component: PageComponent.t,
  pageProps: pageProps,
}

let set_body_class = %raw(`
  function(page_props) {
	  document.body.className = page_props.is_dark ? "dark-mode" : "light-mode"
  }
`)

// We are not using `@react.component` since we will never
// use <App/> within our ReScript code.
// It's only used within `pages/_app.js`
let default = (props: props): React.element => {
  let {component, pageProps} = props
  
  // LLO/TODO:
  // https://tailwindcss.com/docs/dark-mode
  // https://tailscan.com/blog/tailwind-css-flex-a-quick-overview 
  React.useEffect(() => {
    set_body_class(pageProps)
  })

  let router = Next.Router.useRouter()

  let content = React.createElement(component, pageProps)

  switch router.route {
    // TODO: Match on /posts/[slug]
    // and only wrap content with article then.
    // There's also this consideration (at least for Title/Subtitle styling in the header of the blog post)
    // https://www.npmjs.com/package/next-mdx-enhanced
    // But you could just create a React component and pass down the details you want to display in the header
    // and call it a day...
  | "/examples" =>
    <MainLayout>
      <h1 className="font-bold"> {React.string("Examples Section")} </h1> <div> content </div>
    </MainLayout>
    // TODO:
    // wrap classname prose around mdx components only
    // https://tailwindcss.com/docs/typography-plugin
  | _ =>  <MainLayout> content </MainLayout>
  }
}
