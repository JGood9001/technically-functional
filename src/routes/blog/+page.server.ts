import { CONTENTFUL_ACCESS_KEY } from "$env/static/private";
// https://learn.svelte.dev/tutorial/env-static-private
// https://www.youtube.com/watch?v=h2VzXTfbUpQ

// https://kit.svelte.dev/docs/load
export const load = async () => {
    let data = await fetch(`https://cdn.contentful.com/spaces/jtdqhx38qep1/environments/master/entries?access_token=${CONTENTFUL_ACCESS_KEY}`, { method: "GET" }).then(resp => resp.json())
    return { "blog_posts": data.items }
}