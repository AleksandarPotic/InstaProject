<template>
    <div>
        <div class="container" id="profile-all">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 col-md-12">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-4">
                            <img class="logo-profile" src="http://localhost:8000/user/images/user-logo.jpg">
                        </div>
                        <div class="col-lg-8 col-md-8" id="nick-name-sm">
                            <span id="nick-name">{{ auth_user.nick_name }}</span>
                            <span><i class="fas fa-user-cog" style="font-size: 40px; margin-left: 30px;"></i></span>
                            <span style="display: none;"><button class="btn btn-default radius" style="margin-left: 30px; margin-top: -10px;">Following</button></span>
                            <span style="display: none;"><button class="btn btn-primary radius" style="margin-left: 30px; margin-top: -10px;">Follow</button></span>
                            <br>
                            <br>
                            <span class="follow">20 posts</span> <span class="follow" style="margin-left: 20px;">345 followers</span> <span class="follow" style="margin-left: 20px;">321 following</span>
                            <br>
                            <br>
                            <span id="full-name">{{ auth_user.first_name }} {{ auth_user.last_name }}</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-6 profile-mg" v-for="value in posts" v-if="value.user.id == auth_user.id">
                            <img class="post-img-1" @click="modalId(value)" :src="value.img" data-toggle="modal" :data-target="'#myModalImage'+value.id">
                            <!-- Modal -->
                            <div class="modal fade" :id="'myModalImage'+value.id" role="dialog">
                                <div class="modal-dialog modal-lg">

                                    <div class="modal-content" style="border-radius: 0px;">
                                        <div class="modal-body">

                                            <modal_image :item_value="value" :broj_like="value.likes.length" :auth_user_id="auth_user.id"></modal_image>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row text-center" id="mag-footer">
                <div class="col-12">
                    <hr>
                    <h6><img src="http://icons.iconarchive.com/icons/martz90/circle/512/camera-icon.png" width="20px" height="20px" style="margin-top: -5px;"> INSTAPRO IS A TRADEMARK OF ALEKSANDAR POTIC. COPYRIGHT © ALEKSANDAR POTIC 2018.</h6>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import modal_image from './ModalImage';

    export default {
        components:{modal_image},
        data() {
            return {
                posts: [],
                item: [],
                user_post: 0
            }
        },
        props: {
            auth_user: Object,
            auth_user_id: Number
        },

		created() {
            this.fetchPosts();
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

            addLike(this_post) {
                //alert(this_post.id);

                var auth_user = $("#auth_user").val();

                axios.post('api/posts/like',{
                    'post_id': this_post.id,
                    'user_id': auth_user
                })
                    .then(data => {
                        this.fetchPosts();
                    })
            },

            modalId(post) {
                //console.log(post);
                this.item = post;
            }
        }

    }
</script>