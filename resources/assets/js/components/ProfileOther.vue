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
                            <span id="nick-name">{{ user_id }}</span>
                            <span><i class="fas fa-user-cog" style="font-size: 40px; margin-left: 30px;"></i></span>
                            <span style="display: none;"><button class="btn btn-default radius" style="margin-left: 30px; margin-top: -10px;">Following</button></span>
                            <span style="display: none;"><button class="btn btn-primary radius" style="margin-left: 30px; margin-top: -10px;">Follow</button></span>
                            <br>
                            <br>
                            <span class="follow">20 posts</span> <span class="follow" style="margin-left: 20px;">345 followers</span> <span class="follow" style="margin-left: 20px;">321 following</span>
                            <br>
                            <br>
                            <span id="full-name">Tove Lo</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <template v-for="post in posts" v-if="post.user.id == user_id">
                            <div class="col-lg-4 col-md-6 profile-mg">
                                <img class="post-img-1" :src="post.img" data-toggle="modal" :data-target="'#myModalImage'+post.id">
                                <!-- Modal -->
                                <div class="modal fade" :id="'myModalImage'+post.id" role="dialog">
                                    <div class="modal-dialog modal-lg">

                                        <div class="modal-content" style="border-radius: 0px;">
                                            <div class="modal-body">

                                                <friends_image :item_value="post" :broj_like="post.likes.length" :auth_user_id="auth_user_id" :friends_id="user_id"></friends_image>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </template>
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
    import friends_image from './FriendsImage';

    export default {
        components: {friends_image},
        data() {
            return {
                posts: [],
                user_id:'',
                auth_user_id:'',
            }
        },

        props:{
            id:Number
        },

        created() {
            this.link();
            this.fetchPosts();
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
            link() {
                var x = location.pathname;

                this.user_id = x.substring(9,10);
                this.auth_user_id = x.substring(11);
            }
        }
    }
</script>