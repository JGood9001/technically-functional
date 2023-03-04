<script>
import { page } from '$app/stores';
import blog_posts_store from "../../../Store.js"
import { marked } from "marked"
import hljs from "highlight.js"

marked.setOptions({
  renderer: new marked.Renderer(),
  highlight: function(code, lang) {
    const language = hljs.getLanguage(lang) ? lang : 'plaintext';
    return hljs.highlight(code, { language }).value;
  },
  langPrefix: 'hljs language-', // highlight.js css expects a top-level 'hljs' class.
  pedantic: false,
  gfm: true,
  breaks: false,
  sanitize: false,
  smartypants: false,
  xhtml: false
});

let blog_post;
blog_posts_store.subscribe((data) => {
    blog_post = data["blog_posts"].length > 0 ? data["blog_posts"].filter(bp => `/blog/${bp["fields"]["slug"]}` === $page.url.pathname)[0]["fields"] : null;
});

// {
//     id,
//     createdAt,
//     updatedAt,
//     metadata: { tags },
//     fields: {   slug, title, publishedDate, markdown }
// }
</script>

<h1>Single Blog Post Page</h1>
<div>
    <!-- Maybe use this in the future. mdsvex allows you to add Svelte components INSIDE markdown. -->
    <!-- https://joshcollinsworth.com/blog/build-static-sveltekit-markdown-blog#adding-markdown-to-sveltekit-with-mdsvex -->
    {#if blog_post}
        {@html marked.parse(blog_post["markdown"])}
    {/if}
</div>