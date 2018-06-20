<template>
    <div>
        <div class="row">
            <div class="col-lg-1 offset-lg-11 text-right" style="margin-bottom: 5px; margin-top: -5px;">
                <h5 style="cursor: pointer;" data-dismiss="modal"><i class="fas fa-times"></i></h5>
            </div>
            <div class="col-lg-7 col-md-12">
                <img :src="item_value.img" alt="" width="100%" height="350px" @dblclick="addLike(item_value)" style="cursor: pointer;">
            </div>
            <div class="col-lg-5 col-md-12" style="overflow: auto; width: 100%; height: 350px;">
                <div class="row">
                    <input type="hidden" :value="auth_user_id" class="auth_user_id">
                    <template v-for="post in posts" v-if="post.id == item_value.id">
                        <div class="col-lg-12 col-12 com-mg" v-for="comment in post.comments">
                            <b class="hello">{{ comment.user }}</b> <span> {{ comment.text }}</span>
                            <br>
                        </div>
                    </template>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="row">
                    <div class="col-lg-12">
                        <template v-for="lk in item_value.likes" v-if="lk.user_id == auth_user_id">
                            <span style="display: none;">{{ like_status = true }}</span>
                        </template>
                        <br>
                        <span><i :class="like_status ? class1 : class2" :id="item_value.id" @click="addLike(item_value)"></i></span>
                    </div>
                    <div class="col-lg-12">
                        <b>{{ number_like }} likes</b>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <form @submit.prevent="addComment(item_value)">
                    <div class="row">
                        <div class="col-lg-12">
                            <hr>
                            <input type="text" :id="'Komentar'+item_value.id" class="form-control radius commentar" placeholder="Add comment...">
                            <button style="display: none;" class="btn btn-default" type="submit">Add Comment</button>
                            <br>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</template>

<script>

    export default {
        data() {
            return {
                like_status: false,
                posts: [],
                class1: 'fas fa-heart hrt-1 vue_class',
                class2: 'far fa-heart hrt-1',
                number_like: 0
            }
        },

        props:{
            item_value: Object,
            auth_user_id: String,
            friends_id: String,
            broj_like: Number
        },

        created() {
            this.fetchPosts();
            this.number_like = this.broj_like;
        },
        methods: {
            fetchPosts() {
                fetch('http://localhost:8000/api/posts')
                    .then(res => res.json())
                    .then(res => {
                        //console.log(res.data);
                        this.posts = res.data;
                    })
            },
            addLike(post) {

                var auth_user = $(".auth_user_id").val();

                axios.post('http://localhost:8000/api/posts/like',{
                    'post_id': post.id,
                    'user_id': auth_user
                })
                    .then(data => {
                        if(data.data == 'like') {
                            this.number_like += 1;
                            $("#"+post.id).attr('class','fas fa-heart hrt-1 vue_class');
                        } else {
                            this.number_like -= 1;
                            $("#"+post.id).attr('class','far fa-heart hrt-1');
                        }
                    })
            },
            addComment(post) {

                var text = $("#Komentar"+post.id).val();
                var auth_user = this.auth_user_id;

                axios.post('http://localhost:8000/api/comments',{
                    'post_id': post.id,
                    'user_id': auth_user,
                    'text': text
                })
                    .then(data => {
                        $("#Komentar"+post.id).val('');
                        this.fetchPosts();
                    })
            }
        }
    }

</script>
