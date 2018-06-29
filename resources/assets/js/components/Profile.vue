<template>
    <div>
        <div class="container" id="profile-all">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 col-md-12">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-4">
                            <a href="" data-toggle="modal" data-target="#profileModal">
                                <img class="logo-profile log-pro" :src="avatar">
                            </a>
                            <div id="profileModal" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-lg-1 offset-lg-11 text-right" style="margin-bottom: 5px; margin-top: -5px;">
                                                    <h5 style="cursor: pointer;" data-dismiss="modal"><i class="fas fa-times"></i></h5>
                                                </div>
                                                <div class="col-lg-12">
                                                    <vue-avatar
                                                            :width=400
                                                            :height=410
                                                            ref="vueavatar"
                                                            @vue-avatar-editor:image-ready="onImageReady"
                                                            :image="avatar"
                                                    >
                                                    </vue-avatar>
                                                    <br>
                                                    <vue-avatar-scale
                                                            ref="vueavatarscale"
                                                            @vue-avatar-editor-scale:change-scale="onChangeScale"
                                                            :width=450
                                                            :min=1
                                                            :max=3
                                                            :step=0.02
                                                    >
                                                    </vue-avatar-scale>
                                                </div>
                                            </div>
                                        </div>
                                        <form @submit.prevent="changeProfile()">
                                            <div class="modal-footer">
                                                <button type="submit" v-if="image_status" class="btn btn-default btn-block">Change Profile</button>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-8" id="nick-name-sm">
                            <span id="nick-name">{{ auth_user.nick_name }}</span>
                            <a style="cursor:pointer;" data-toggle="modal" data-target="#configModal"><span><i class="fas fa-user-cog" style="font-size: 40px; margin-left: 30px;"></i></span></a>
                            <span style="display: none;"><button class="btn btn-default radius" style="margin-left: 30px; margin-top: -10px;">Following</button></span>
                            <span style="display: none;"><button class="btn btn-primary radius" style="margin-left: 30px; margin-top: -10px;">Follow</button></span>
                            <br>
                            <br>
                            <span class="follow">{{ user.posts.length }} posts</span> <span class="follow" style="margin-left: 20px; cursor: pointer;" data-toggle="modal" data-target="#following">{{ user.following.length }} followers</span> <span class="follow" style="margin-left: 20px; cursor: pointer;" data-toggle="modal" data-target="#follower">{{ user.follower.length }} following</span>
                            <br>
                            <br>
                            <span id="full-name">{{ auth_user.first_name }} {{ auth_user.last_name }}</span>
                        </div>
                        <!-- Modal -->
                        <div id="configModal" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-lg-1 offset-lg-11 text-right" style="margin-bottom: 5px; margin-top: -5px;">
                                                <h5 style="cursor: pointer;" data-dismiss="modal"><i class="fas fa-times"></i></h5>
                                            </div>
                                            <div class="col-lg-7 col-md-12">
                                                <p>Some text in the modal.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" @click="Logout()" class="btn btn-default btn-block radius" style="background-color: #f2f2f2; border: 1px solid lightgray;">Sign Out</button>
                                    </div>
                                </div>

                            </div>
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
    import modal_image from './ModalImage';
    import list_following from './ListFollowing';
    import list_follower from './ListFollower';
    import Vue from 'vue'
    import VueAvatar from '../vue-avatar-editor/src/components/VueAvatar'
    import VueAvatarScale from '../vue-avatar-editor/src/components/VueAvatarScale'

    export default {
        components:{modal_image, list_following, list_follower, VueAvatar, VueAvatarScale},
        data() {
            return {
                posts: [],
                user: [],
                item: [],
                number_post: 0,
                image_status: false,
                avatar: ''
            }
        },
        props: {
            auth_user: Object,
            auth_user_id: Number
        },

		created() {
            this.fetchPosts();
            this.fetchUsers();
            this.avatar = this.auth_user.avatar;
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

            fetchUsers() {
              fetch('api/users')
                  .then(response => response.json())
                  .then(response => {
                      var users = response.data;
                      var i;
                      for (i = 0; i < users.length; i++) {
                          if (users[i].id == this.auth_user_id) {
                              this.user = users[i];
                          }
                      }
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
            },

            onChangeScale(scale) {
                this.$refs.vueavatar.changeScale(scale)
            },
            saveClicked() {
                var img = this.$refs.vueavatar.getImageScaled()
                // use img
            },
            onImageReady(scale) {
                this.$refs.vueavatarscale.setScale(scale);
                this.image_status = true;
            },
            changeProfile() {
                var img = this.$refs.vueavatar.getImageScaled();
                axios.post('api/users',{
                    'auth_user_id': this.auth_user_id,
                    'image': img.toDataURL()
                })
                    .then(data => {
                        this.avatar = img.toDataURL();
                        this.$toasted.show('Successfully changed profile image.',{type:'success'}).goAway(3000);
                    })
            },
            Logout() {
                axios.post('/logout',{
                    'auth_user_id': this.auth_user_id
                })
                    .then(data => {
                        location.reload();
                    })
            }
        }

    }
</script>