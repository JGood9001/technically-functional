import fs from 'fs'
import matter from 'gray-matter'
import { MDXRemote } from 'next-mdx-remote'
import { serialize } from 'next-mdx-remote/serialize'
import dynamic from 'next/dynamic'
import Head from 'next/head'
import Link from 'next/link'
import path from 'path'
import remarkPrism from "remark-prism"

// Just copied this over from the examples and it worked first go.
// https://github.com/vercel/next.js/blob/canary/examples/with-mdx-remote/pages/posts/%5Bslug%5D.js
// https://github.com/hashicorp/next-mdx-remote

// POSTS_PATH is useful when you want to get the path to a specific file
const POSTS_PATH = path.join(process.cwd(), 'blog-posts')

// postFilePaths is the list of all mdx files inside the POSTS_PATH directory
const postFilePaths = fs
  .readdirSync(POSTS_PATH)
  // Only include md(x) files
  .filter((path) => /\.mdx?$/.test(path))
  
// Custom components/renderers to pass to MDX.
// Since the MDX files aren't loaded by webpack, they have no knowledge of how
// to handle import statements. Instead, you must include components in scope
// here.
const components = {
  // It also works with dynamically-imported components, which is especially
  // useful for conditionally loading components for certain routes.
  // See the notes in README.md for more details.
  // Head,
  // Counter: dynamic(() => import('src/components/Counter')),
}

// https://dev.to/mikeesto/next-js-mdx-w-code-highlighting-16fi
// more themes to pick from -> https://github.com/PrismJS/prism-themes
// href="https://unpkg.com/dracula-prism/dist/css/dracula-prism.css"
// href="https://unpkg.com/prism-themes@1.9.0/themes/prism-night-owl.min.css"
// href="https://unpkg.com/prism-themes@1.9.0/themes/prism-synthwave84.min.css"
// href="https://unpkg.com/prism-themes@1.9.0/themes/prism-holi-theme.min.css"
// href="https://unpkg.com/prism-themes@1.9.0/themes/prism-z-touch.min.css"
export default function PostPage({ source, frontMatter }) {
  return (
    // <article className="prose lg:prose-xl md:w-192 article-styles border">
    // This is the answer to customizing the styles for this page
    // https://stackoverflow.com/a/66596556
    // https://tailwindcss.com/docs/typography-plugin
    // Even after that... just centering and making the article container's width
    // larger is proving to be a challenge...

    // https://www.youtube.com/watch?v=GEYkwfYytAM
    // https://www.youtube.com/watch?v=J0Wy359NJPM
    <article className="prose max-w-none pb-16">
      <div>
        <h1 className="text-5xl">{frontMatter.title}</h1>
        {frontMatter.description && (
          <p className="text-xl text-light-gray">{frontMatter.description}</p>
        )}
      </div>
    
      <MDXRemote {...source} components={components} />
    </article>
  )
}

export const getStaticProps = async ({ params }) => {
  const postFilePath = path.join(POSTS_PATH, `${params.slug}.mdx`)
  const source = fs.readFileSync(postFilePath)

  const { content, data } = matter(source)

  const mdxSource = await serialize(content, {
    // Optionally pass remark/rehype plugins
    mdxOptions: {
      remarkPlugins: [remarkPrism],
      rehypePlugins: [],
    },
    scope: data,
  })

  return {
    props: {
      source: mdxSource,
      frontMatter: data,
    },
  }
}

export const getStaticPaths = async () => {
  const paths = postFilePaths
    // Remove file extensions for page paths
    .map((path) => path.replace(/\.mdx?$/, ''))
    // Map the path into the static paths object required by Next.js
    .map((slug) => ({ params: { slug } }))

  return {
    paths,
    fallback: false,
  }
}