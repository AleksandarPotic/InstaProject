<template>
    <div id="user_chat" :class="message_status ? 'row mess-one' : 'row mess-one display_none'">
        <div class="col-lg-2 col-md-2 col-4">
            <router-link :to="{ path:'/chat/'+user.id+'/'+auth_user_id }" style="text-decoration: none;">
                <img class="logo-messanger" :src="user.avatar">
            </router-link>
        </div>
        <div class="col-lg-6 col-md-6 col-8">
            <router-link :to="{ path:'/chat/'+user.id+'/'+auth_user_id }" style="text-decoration: none;">
                <span class="nick-name-messanger" style="color: #2b2b2b;"><b>{{ user.nick_name }}</b></span>
                <br>
                <span style="color: #2b2b2b;">{{ last_message }}</span>
                <template v-if="user.activate">
                    <span class="time-active-1"><h6>Active {{ user.activate }}</h6></span>
                </template>
                <template v-else>
                    <span class="time-active-1"><h6>Active Now</h6></span>
                </template>
            </router-link>
        </div>
        <div class="col-lg-4 col-md-4 col-8 text-right">
            <template v-if="user.activate_now">
                <h6 class="time-active-2">Active Now</h6>
            </template>
            <template v-else>
                <h6 class="time-active-2">Active {{ user.activate }}</h6>
            </template>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                message_status: false,
                last_message: ''
            }
        },

        created() {
            this.fetchMessage();
        },
        props: {
            auth_user_id: Number,
            user: Object
        },

        methods: {
            fetchMessage() {
                fetch('http://localhost:8000/api/all_message')
                    .then(res => res.json())
                    .then(res => {
                        var messages = res.data;
                        var i;

                        for (i = 0; i < messages.length; i++) {
                            if(messages[i].user_id == this.auth_user_id && messages[i].receiver == this.user.id) {
                                //console.log(messages[i]);
                                this.message_status = true;
                                this.last_message = messages[i].text;
                            } else if (messages[i].user_id == this.user.id && messages[i].receiver == this.auth_user_id) {
                                this.message_status = true;
                                this.last_message = messages[i].text;
                            }
                        }
                    })
            }
        }
    }
</script>