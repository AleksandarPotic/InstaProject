<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-1 offset-lg-11 text-right" style="margin-bottom: 5px; margin-top: -5px;">
                <h5 style="cursor: pointer;" data-dismiss="modal"><i class="fas fa-times"></i></h5>
            </div>
            <div class="col-lg-12" style="overflow: auto; width: 100%; height: 500px;">
                <template v-for="follower in followers">
                    <template v-for="user in users" v-if="user.id == follower.follow">
                        <div class="row">
                            <div class="col-lg-2">
                                <img class="logo-post" :src="user.avatar">
                            </div>
                            <div class="col-lg-6" style="cursor: pointer;" v-if="auth_user_id != user.id">
                                <router-link :to="{ path:'/friends/'+user.id+'/'+auth_user_id }" data-dismiss="modal" style="margin-top:20px; color: #050505; text-decoration:none;"><h6>{{ user.nick_name }}</h6></router-link>
                            </div>
                            <div class="col-lg-6" v-else>
                                <router-link to="/profile" data-dismiss="modal" style="margin-top:20px; color: #050505; text-decoration:none;"><h6>{{ user.nick_name }}</h6></router-link>
                            </div>
                        </div>
                        <hr>
                    </template>
                </template>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                users: []
            }
        },
        props: {
            followers:Array,
            auth_user_id: Number
        },
        created(){
            this.fetchUsers();
        },
        methods: {
            fetchUsers() {
                fetch('http://localhost:8000/api/users')
                    .then(response => response.json())
                    .then(response => {
                        this.users = response.data;
                    })
            },
        }
    }
</script>