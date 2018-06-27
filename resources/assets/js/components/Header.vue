<template>
	<div class="all">
		<div class="desc-nav">
			<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="border-bottom: 3px solid #ff2323; background-color: #ff3f3f;">
				<router-link to="/" class="navbar-brand col-lg-2 offset-lg-2 col-md-1">
					<img src="http://icons.iconarchive.com/icons/martz90/circle/512/camera-icon.png" width="65px" height="65px" style="margin-top: -20px;">
				 	<font face="Freestyle Script" style="font-size: 50px; color: white;"><b>Instapro</b></font>
				</router-link>

			    <form class="form-inline col-lg-3 col-md-3">
			      <input class="form-control radius" type="text" v-model="search" placeholder="Search" aria-label="Search" style="padding-right: 50px; margin-left: 70px; color: gray; font-weight: bold;">
					<div id="header_search" :class="search === '' ? 'col-lg-11 display_none' : 'col-lg-11' ">
						<template v-for="user in filteredUsers">
							<template v-if="auth_user_id == user.id">
								<router-link to="/profile" class="list_users">
									<div class="razmak" @click="SearchNone()">
										<img class="logo-post" :src="user.avatar"> {{ user.nick_name }}
									</div>
								</router-link>
							</template>
							<template v-else>
								<router-link :to="{ path: '/friends/'+user.id+'/'+auth_user_id}" class="list_users">
									<div class="razmak" @click="SearchNone()">
										<img class="logo-post" :src="user.avatar"> {{ user.nick_name }}
									</div>
								</router-link>
							</template>
						</template>
					</div>
			    </form>
			    <div class="col-md-3 text-right">
			    	<router-link to="/messanger"><span class="ico-ma-2"><i class="fas fa-envelope" style="font-size:30px"></i></span></router-link>
			    	<router-link to="/notification"><span class="ico-ma-2"><i class="fas fa-heart" style="font-size:30px"></i></span></router-link>
			    	<router-link to="/profile"><span class="ico-ma-2"><i class="fas fa-user" style="font-size:30px"></i></span></router-link>
			    </div>
			</nav>
		</div>

		<!-- Footer Navbar -->
		<div class="desc-nav">
			<nav class="navbar navbar-expand-lg navbar-light fixed-bottom" style="border-top: 1px solid gray; background-color: white;">
				<div class="col-lg-2 offset-lg-5">
					<router-link to="/upload"><i class="fas fa-camera" style="font-size: 36px; margin-left: 50px; color: #23272b;"></i></router-link>

				</div>
			</nav>
		</div>
		<!-- Footer Navbar -->

		<div class="desc-nav-2">
			<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="border-bottom: 3px solid #ff2323; background-color: #ff3f3f;">
				<div class="col-sm-6">
					<router-link to="/" class="navbar-brand" style="margin-top: -15px;">
						<img src="http://icons.iconarchive.com/icons/martz90/circle/512/camera-icon.png" width="40px" height="40px" style="margin-top: -17px;">
					 	<font face="Freestyle Script" style="font-size: 42px; color: white;"><b>Instapro</b></font>
					</router-link>
				</div>
			    <div class="col-sm-6 text-right" style="margin-top: -75px">
			    	<router-link to="/messanger"><span class="ico-ma-2"><i class="fas fa-envelope" style="font-size:25px"></i></span></router-link>
			    	<router-link to="/notification"><span class="ico-ma-2"><i class="fas fa-heart" style="font-size:25px"></i></span></router-link>
			    	<router-link to="/profile"><span class="ico-ma-2"><i class="fas fa-user" style="font-size:25px"></i></span></router-link>
			    </div>
			    <form class="form-inline col-sm-12 text-center" style="margin-top: -8px;">
			      <input class="form-control radius" type="text" placeholder="Search" aria-label="Search" style="padding-right: 60px; color: gray; font-weight: bold;">
			    </form>
			</nav>
		</div>
	</div>
</template>

<script>
	export default {
	    data() {
            return {
                users: [],
                search: ''
            }
		},
		props: {
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
            SearchNone() {
                this.search = '';
			}
        },
		computed: {
	        filteredUsers: function () {
				return this.users.filter((user) => {
				    return user.nick_name.match(this.search);
				});
            }
		}
	}
</script>