<template>
	<div class="container" id="post-all">
		<div class="row">
			<Post v-for="item in items"
				   :nick_name="item.user.nick_name"
				   :user_id_name="item.user.id"
				   :location="item.location"
				   :created_at="item.created_at"
				   :img="item.img"
				   :like="item.likes.length"
				   :likes="item.likes"
				   :comments="item.comments"
				   :item="item"
				   :auth_user_id="auth_user_id"
				   :key="item.index"
			></Post>
		</div>
	</div>
</template>

<script>
	import Post from './Post.vue';
    import LikeList from './LikeList';

    export default {
        components:{Post, LikeList},
        data() {
            return {
                items: [],
				like_status: false,
				class1: 'fas fa-heart hrt-1 vue_class',
				class2: 'far fa-heart hrt-1',
                number_like: 0
            }
        },

        created() {
            this.fetchPosts();
        },

        props: {
            auth_user_id: Number,
            auth_user: Object
		},


        methods: {
            fetchPosts() {
                fetch('api/posts')
                    .then(res => res.json())
                    .then(res => {
                        //console.log(res.data);
                        this.items = res.data;
                    })
            },
        }
    }
</script>