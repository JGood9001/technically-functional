// This type is based on the getInitialProps return value.
// If you are using getServerSideProps or getStaticProps, you probably
// will never need this
// See https://nextjs.org/docs/advanced-features/custom-app
type pageProps

module PageComponent = {
  type t = React.component<pageProps>
}

type props = {
  @as("Component")
  component: PageComponent.t,
  pageProps: pageProps,
}

// https://v0.mdxjs.com/guides/syntax-highlighting
let components: MDX.components = {
  pre: props =>
    <div>{props.children}</div>
    // <div>{React.string("dafuq")}</div>
  ,
  code: props => {
    Js.log("code's props?")
    Js.log(props)
    // {className: 'language-res', children: 'let f = () => Js.log("send it!")\n'}
    // <pre className="blue" />
    <pre>{props.children}</pre>
    // <pre className="blue" />
  }
}

// We are not using `@react.component` since we will never
// use <App/> within our ReScript code.
// It's only used within `pages/_app.js`
let default = (props: props): React.element => {
  let {component, pageProps} = props

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

// import React from 'react'
// import {MDXProvider} from '@mdx-js/tag'
// const components = {
//   pre: props => <div {...props} />,
//   code: props => <pre style={{ color: 'tomato' }} {...props} />
// }
// export default props => (
//   <MDXProvider components={components}>
//     <main {...props}>
//     </main>
//   </MDXProvider>
// )