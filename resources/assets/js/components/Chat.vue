<template>
	<div class="container" id="chat-all">
	<div class="row">
		<div class="col-lg-6 offset-lg-3 col-md-12" id="chat-div">
			<div class="row" style="margin-top: 15px;">
				<input type="hidden" id="au_id" :value="auth_user_id">
				<input type="hidden" id="us_id" :value="user.id">
				<div class="col-lg-2 col-md-2 col-3">
					<img class="logo-messanger" :src="user.avatar">
				</div>
				<div class="col-lg-6 col-md-6 col-6">
					<span><h3>{{ user.nick_name }}</h3></span>
					<span>{{ user.first_name }} {{ user.last_name }}</span>
				</div>
			</div>
			<hr>
			<div id="message_scroll" style="height: 280px; overflow: auto;">
				<template v-for="messanger in messangers">
					<div class="col-lg-8 offset-lg-1 col-md-8 offset-md-1 col-9 text-left sender" v-if="messanger.user_id != auth_user_id">
						<span>
							{{ messanger.text }}
						</span>
						<br>
						<span class="text-center time-ago-chat">{{ messanger.created_at }}</span>
					</div>
					<div class="col-lg-7 offset-lg-4 col-md-7 offset-md-4 col-9 text-right me" v-else>
						<span>
							{{ messanger.text }}
						</span>
						<br>
						<span class="text-center time-ago-chat">{{ messanger.created_at }}</span>
					</div>
				</template>
			</div>
			<form @submit.prevent="sendMessage()">
			<div class="row">
					<div class="col-lg-12">
						<hr>
						<input type="text" class="form-control enter-message" v-model="text" name="" placeholder="Enter message...">
						<br>
					</div>
			</div>
			</form>
		</div>
		<audio id="myAudio">
			<source src="http://localhost:8000/user/song/plucky.mp3" type="audio/ogg">
		</audio>
	</div>
</div>
</template>

<script>
	export default {
	    data() {
	        return {
	            user_auth: [],
	            user: [],
	            user_id: '',
				auth_user_id: '',
				messangers: [],
				text:''
			}
		},

		created() {
	        this.link();
	        this.fetchUsers();
            this.Messanger();

            Echo.private('testMessanger')
                .listen('Messanger', (e) => {
                    if (this.auth_user_id == e.message.receiver && this.user_id == e.message.user_id) {
                        //console.log(e.message);
                        this.messangers.push(e.message);
                    }
                });
		},

		methods: {
            fetchUsers() {
                fetch('http://localhost:8000/api/users')
                    .then(response => response.json())
                    .then(response => {
                        var users = response.data;
                        var i;
                        for (i = 0; i < users.length; i++) {
                            if (users[i].id == this.auth_user_id) {
                                this.user_auth = users[i];
                            }
                        }
                        for (i = 0; i < users.length; i++) {
                            if (users[i].id == this.user_id) {
                                this.user = users[i];
                            }
                        }
                    })
            },

            Messanger() {
                axios.post('http://localhost:8000/api/users/messanger', {
                    'auth_user_id': this.auth_user_id,
                    'user_id': this.user_id
                })
                    .then(data => {
                        //console.log(data.data.data);
                        this.messangers = data.data.data;
                    })
            },

            sendMessage() {
                var text = this.text;
                var auth_user_id = this.auth_user_id;
                var user_id = this.user_id;

                this.text = '';
                axios.post('http://localhost:8000/api/users/sendMessage', {
                    'auth_user_id': auth_user_id,
                    'user_id': user_id,
                    'text': text
                })
                    .then(data => {
                        this.Messanger();
                    })
            },

            link() {
                var x = location.pathname;

                this.user_id = x.substring(6, 7);
                this.auth_user_id = x.substring(8);
            },
        },

	}
</script>