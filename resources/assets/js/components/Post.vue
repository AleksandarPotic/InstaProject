<template>
    <div class="col-lg-8 offset-lg-2 col-sm-12 col-12 post-c">
        <input type="hidden" :value="auth_user_id" class="auth_user_id">
        <div class="row post-user">
            <div class="col-lg-1 col-sm-1 col-2">
                <img class="logo-post" :src="item.user.avatar">
            </div>
            <div class="col-lg-8 col-sm-8 col-7">
                <router-link to="/profile" :user_id_name="user_id_name" v-if="user_id_name == auth_user_id" style="text-decoration:none; color:#1b1e21; cursor: pointer;"><b>{{ nick_name }}</b></router-link>
                <router-link :to="{ path:'/friends/'+user_id_name+'/'+auth_user_id }" v-else style="text-decoration:none; color:#1b1e21; cursor: pointer;"><b>{{ nick_name }}</b></router-link>
                <br>
                {{ location }}
            </div>
            <div class="col-lg-3 col-sm-3 col-3 text-right">
                {{ created_at }}
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <img class="post-img" @dblclick="addLike(item)" style="cursor: pointer;" :src="img">
            </div>
        </div>
        <div class="row post-lk">
            <div>
                <div class="col-lg-12">
                    <template v-for="lk in likes" v-if="lk.user_id == auth_user_id">
                        <span style="display: none;">{{ like_status = true }}</span>
                    </template>
                    <span><i :class="like_status ? class1 : class2" :id="item.id" @click="addLike(item)"></i></span>
                    <i class="far fa-comments com"></i>
                </div>
                <div class="col-lg-12" style="cursor: pointer;" v-if="number_like != 0" data-toggle="modal" :data-target="'#myModal'+item.id">
                    <b>{{ number_like }} likes</b>
                </div>
                <div class="col-lg-12">
                    <b>{{ nick_name }}</b> {{ item.description }}
                </div>
                <!-- Modal -->
                <div class="modal fade" :id="'myModal'+item.id" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-body">
                                <LikeList :post_likes="item.likes"></LikeList>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <form @submit.prevent="addComment(item)">
            <div class="row">
                <div class="col-lg-12" style="margin-top: -20px;">
                    <h6 @click="toggleCommentar(item)" :id="'btnCom'+item.id" style="cursor: pointer;" v-if="comments.length != 0">View all {{ comments.length }} comments</h6>
                    <h6 @click="toggleCommentar(item)" :id="'btnCom'+item.id" style="cursor: pointer; margin-bottom: 10px;" v-else="">Add comment...</h6>
                    <span :id="'togCom'+item.id" v-for="po in posts" v-if="po.id == item.id"  style="display: none;">
                        <div class="col-lg-12 col-12 com-mg komP" v-for="comment in po.comments">
                            <b class="hello">{{ comment.user }}</b> <span> {{ comment.text }}</span>
                            <br>
                        </div>
                    </span>
                </div>

                <div class="col-lg-12" :id="'tgCom'+item.id" style="display: none;">
                    <hr>
                    <input type="text" :id="'Komentar'+item.id" class="form-control radius commentar" placeholder="Add comment...">
                    <button style="display: none;" class="btn btn-default" type="submit">Add Comment</button>
                    <br>
                </div>
            </div>
        </form>
    </div>
</template>

<script>
    import LikeList from './LikeList';
    import ProfileOther from './ProfileOther';

    export default {
        components: {
          LikeList,ProfileOther
        },
        data() {
            return {
                posts: [],
                like_status: false,
                class1: 'fas fa-heart hrt-1 vue_class',
                class2: 'far fa-heart hrt-1',
                number_like: 0
            }
        },

        created() {
            this.fetchPosts();
            this.number_like = this.like;
        },

        props: {
            nick_name: String,
            location: String,
            created_at: String,
            img: String,
            like: Number,
            comments: Array,
            likes: Array,
            item: Object,
            user_id_name: Number,
            auth_user_id: Number
        },


        methods: {
            fetchPosts() {
                fetch('api/posts')
                    .then(res => res.json())
                    .then(res => {
                        //console.log(res.data);
                        this.posts = res.data;
                    })
            },
            addComment(post) {
                var id = post.id;
                var text = $('#Komentar'+id).val();

                var auth_user = $(".auth_user_id").val();

                axios.post('api/comments',{
                    'post_id': post.id,
                    'user_id': auth_user,
                    'text': text
                })
                    .then(data => {
                        $('#Komentar'+id).val('');
                        this.fetchPosts();
                    })
            },

            addLike(post) {

                var auth_user = $(".auth_user_id").val();

                axios.post('api/posts/like',{
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
            toggleCommentar(item) {
                $("#togCom"+item.id).show();
                $("#tgCom"+item.id).show();
                $("#btnCom"+item.id).hide();
            }

        }
    }
</script>