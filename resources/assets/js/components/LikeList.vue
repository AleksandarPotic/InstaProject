<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-1 offset-lg-11 text-right" style="margin-bottom: 5px; margin-top: -5px;">
                <h5 style="cursor: pointer;" data-dismiss="modal"><i class="fas fa-times"></i></h5>
            </div>
            <div class="col-lg-12" style="overflow: auto; width: 100%; height: 500px;">
                <template v-for="like in post_likes">
                    <div class="row">
                        <div class="col-lg-2">
                            <img class="logo-post" :src="like.user_avatar">
                        </div>
                        <div class="col-lg-6" v-if="auth_user_id != like.user_id">
                            <router-link :to="{ path:'/friends/'+like.user_id+'/'+auth_user_id }" data-dismiss="modal" style="margin-top:20px; color: #050505; text-decoration:none;"><h6>{{ like.user_nick_name }}</h6></router-link>
                        </div>
                        <div class="col-lg-6" v-else>
                            <router-link to="/profile" data-dismiss="modal" style="margin-top:20px; color: #050505; text-decoration:none;"><h6>{{ like.user_nick_name }}</h6></router-link>
                        </div>
                    </div>
                    <hr>
                </template>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props:{
            post_likes: Array,
            auth_user_id: Number
        }
    }
</script>