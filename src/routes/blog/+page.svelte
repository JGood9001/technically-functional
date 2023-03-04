<script>
    export let data;
    import blog_posts_store from "../../Store.js"

    blog_posts_store.update((_) => {
        console.log("updating blog posts store with data")
        console.log(data)
        return data;
    });
</script>

<h1>Blog posts page</h1>
<div data-sveltekit-reload='off'>
    {#each data["blog_posts"] as blog_post}
		<li><a href="/blog/{blog_post.fields.slug}" rel="noreferrer">
			{blog_post.fields.slug}
		</a></li>
	{/each}
</div>