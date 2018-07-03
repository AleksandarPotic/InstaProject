<template>
	<div class="container" id="messanger-all">
	<div class="row">
		<div class="col-lg-8 offset-lg-2 col-md-12" id="all-bck">
			<div class="col-lg-12 text-center">
				<br>
				<h3>Messanger</h3>

				<hr>
			</div>
			<div class="col-lg-12 all-bck-2" style="height: 300px; overflow: auto;">
				<span id="preload_gif" style="margin-left: 250px;">
					<img src="http://localhost:8000/user/images/preload-1.gif" height="230px" width="200px">
				</span>
                <span id="user_chat_class" style="display: none;">
				    <user_chat v-for="user in users" :auth_user_id="auth_user_id" :key="user.id" :user="user"></user_chat>
			    </span>
            </div>
		</div>
	</div>
		<!-- FOOTER -->

		<div class="row text-center" id="mag-footer">
			<div class="col-12">
				<hr>
				<h6><img src="http://icons.iconarchive.com/icons/martz90/circle/512/camera-icon.png" width="20px" height="20px" style="margin-top: -5px;"> INSTAPRO IS A TRADEMARK OF ALEKSANDAR POTIC. COPYRIGHT © ALEKSANDAR POTIC 2018.</h6>
			</div>
		</div>

		<!-- /FOOTER -->
</div>
</template>

<script>
    import user_chat from './UserChat';
	export default {

	    components: {user_chat},
	    data() {
	        return {
	            users:[],
                search: ''
			}
		},

		created() {
	        this.fetchUsers();
	        this.Preload();
		},
		props: {
            auth_user_id: Number
		},

		methods: {
	        fetchUsers() {
	            fetch('api/users')
					.then(response => response.json())
                    .then(response => {
                        //console.log(response.data);
                        this.users = response.data;
                    })
			},
			Preload() {
                setTimeout(function () {
                    $("#preload_gif").hide();
                    $("#user_chat_class").show();
                },3000);
			}
		}
	}
</script>