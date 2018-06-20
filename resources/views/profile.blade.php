@extends('layout.app')

@section('body-part')
<div class="container" id="profile-all">
	<div class="row">
		<div class="col-lg-8 offset-lg-2 col-md-12">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-4">
					<img class="logo-profile" src="{{ asset('/user/images/user-logo.jpg') }}">
				</div>
				<div class="col-lg-8 col-md-8" id="nick-name-sm">
					<span id="nick-name">tove_lo_345</span> 
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
				<div class="col-lg-4 col-md-6 profile-mg">
					<img class="post-img-1" src="{{ asset('/user/images/post-1.jpg') }}">
					<i class="far fa-heart"></i> <span>96</span>
					<i class="far fa-comments"></i> <span>15</span>
				</div>
				<div class="col-lg-4 col-md-6 profile-mg">
					<img class="post-img-1" src="{{ asset('/user/images/post-2.jpg') }}">
					<i class="far fa-heart"></i> <span>96</span>
					<i class="far fa-comments"></i> <span>15</span>
				</div>
				<div class="col-lg-4 col-md-6 profile-mg">
					<img class="post-img-1" src="{{ asset('/user/images/post-1.jpg') }}">
					<i class="far fa-heart"></i> <span>96</span>
					<i class="far fa-comments"></i> <span>15</span>
				</div>
				<div class="col-lg-4 col-md-6 profile-mg">
					<img class="post-img-1" src="{{ asset('/user/images/post-3.jpg') }}">
					<i class="far fa-heart"></i> <span>96</span>
					<i class="far fa-comments"></i> <span>15</span>
				</div>
				<div class="col-lg-4 col-md-6 profile-mg">
					<img class="post-img-1" src="{{ asset('/user/images/post-3.jpg') }}">
					<i class="far fa-heart"></i> <span>96</span>
					<i class="far fa-comments"></i> <span>15</span>
				</div>
				<div class="col-lg-4 col-md-6 profile-mg">
					<img class="post-img-1" src="{{ asset('/user/images/post-2.jpg') }}">
					<i class="far fa-heart"></i> <span>96</span>
					<i class="far fa-comments"></i> <span>15</span>
				</div>
				<div class="col-lg-4 col-md-6 profile-mg">
					<img class="post-img-1" src="{{ asset('/user/images/post-1.jpg') }}">
					<i class="far fa-heart"></i> <span>96</span>
					<i class="far fa-comments"></i> <span>15</span>
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
@endsection