<template>
    <div>

        <div class="container" id="profile-all">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 col-md-12">
                    <div class="row">
                        <template v-for="item in foll.following" v-if="item.following == auth_user_id">
                            <span style="display:none;">{{ follow123 = true }}</span>
                        </template>
                        <div class="col-lg-4 col-md-4 col-4">
                            <img class="logo-profile" src="http://localhost:8000/user/images/user-logo.jpg">
                        </div>
                        <div class="col-lg-8 col-md-8" id="nick-name-sm">
                            <span id="nick-name">{{ user.nick_name }}</span>
                            <span v-if="follow123 === true">
                                <button class="btn btn-default radius" style="margin-left: 30px; margin-top: -10px;" @click="Following(auth_user_id,user.id)">Following</button>
                                <router-link :to="{ path:'/chat/'+user.id+'/'+auth_user_id }">
                                    <button class="btn btn-default radius" style="background-color: white; border: 1px solid lightgray; width: 302px; margin-top: 10px;">Message</button>
                                </router-link>
                            </span>
                            <span v-else>
                                <button class="btn btn-primary radius" style="margin-left: 30px; margin-top: -10px;" @click="Follow(auth_user_id,user.id)">Follow</button>
                            </span>
                            <br>
                            <br>
                            <span class="follow">{{ user.posts.length }} posts</span> <span class="follow" style="margin-left: 20px; cursor: pointer;" data-toggle="modal" data-target="#following">{{ user.following.length }} followers</span> <span class="follow" style="margin-left: 20px; cursor: pointer;" data-toggle="modal" data-target="#follower">{{ user.follower.length }} following</span>
                            <br>
                            <br>
                            <span id="full-name">{{ user.first_name }} {{ user.last_name }}</span>

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


            <!-- Modal -->
            <div class="modal fade" id="following" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-body">
                            <list_following :followings="user.following" :auth_user_id="auth_user_id"></list_following>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="follower" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-body">
                            <list_follower :followers="user.follower" :auth_user_id="auth_user_id"></list_follower>
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
    import friends_image from './FriendsImage';
    import list_following from './ListFollowing';
    import list_follower from './ListFollower';

    export default {
        components: {friends_image,list_following,list_follower},
        data() {
            return {
                posts: [],
                user: [],
                foll: [],
                user_id:'',
                auth_user_id:'',
                follow123: false
            }
        },

        props:{
            id:Number
        },

        created() {
            this.link();
            this.fetchPosts();
            this.fetchUsers();
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

            fetchUsers() {
                fetch('http://localhost:8000/api/users')
                    .then(response => response.json())
                    .then(response => {
                        var users = response.data;
                        var i;
                        for (i = 0; i < users.length; i++) {
                            if (users[i].id == this.user_id) {
                                this.user = users[i];
                                this.follow123 = false;
                                this.foll = users[i];
                            }
                        }
                    })
            },

            link() {
                var x = location.pathname;

                this.user_id = x.substring(9,10);
                this.auth_user_id = x.substring(11);
            },

            Follow(auth_user,user_id) {

                this.follow123 = true;
                axios.post('http://localhost:8000/api/users/follow',{
                    'auth_user': auth_user,
                    'user_id': user_id
                })
                    .then(data => {
                        this.fetchUsers();
                    })
            },

            Following(auth_user,user_id) {

                this.follow123 = false;
                axios.post('http://localhost:8000/api/users/unfollow',{
                    'auth_user': auth_user,
                    'user_id': user_id
                })
                    .then(data => {
                        this.fetchUsers();
                    });
            }
        }
    }
</script>