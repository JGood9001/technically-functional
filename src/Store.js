import { writable } from 'svelte/store';

const blog_posts_store = writable({ blog_posts: [] });

export default blog_posts_store

