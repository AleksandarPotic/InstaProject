@extends('layout.app')

@section('body-part')

<div class="container" id="not-all">
	<div class="row">
		<div class="col-lg-8 offset-lg-2 col-md-12" id="not-div">
			<div class="row" style="margin-top: 10px;">
				<div class="col-lg-2 offset-lg-1 col-md-2 offset-md-1 col-2">
					<img class="not-logo" src="{{ asset('/user/images/user-logo.jpg') }}">
				</div>
				<div class="col-lg-6 col-md-6 col-6 btn-text">
					<span class="not-nick-name">tove_lo</span> <span class="text-not">Start following you.</span> <span class="not-time">25m</span>
				</div>
				<div class="col-lg-2 offset-lg-1 col-md-2 offset-md-1 col-4 btn-not">
					<button class="btn btn-primary btn-block radius">Follow</button>
				</div>
			</div>
			<hr>
			<div class="row" style="margin-top: 10px;">
				<div class="col-lg-2 offset-lg-1 col-md-2 offset-md-1 col-2">
					<img class="not-logo" src="{{ asset('/user/images/user-logo.jpg') }}">
				</div>
				<div class="col-lg-6 col-md-6 col-6 btn-text">
					<span class="not-nick-name">tove_lo</span> <span class="text-not">Start following you.</span> <span class="not-time">25m</span>
				</div>
				<div class="col-lg-2 offset-lg-1 col-md-2 offset-md-1 col-4 btn-not">
					<button class="btn btn-default btn-block radius">Following</button>
				</div>
			</div>
			<hr>
			<div class="row" style="margin-top: 10px;">
				<div class="col-lg-2 offset-lg-1 col-md-2 offset-md-1 col-2">
					<img class="not-logo" src="{{ asset('/user/images/user-logo.jpg') }}">
				</div>
				<div class="col-lg-6 col-md-6 col-6 btn-text">
					<span class="not-nick-name">tove_lo</span> <span class="text-not">Liked your photo.</span> <span class="not-time">25m</span>
				</div>
				<div class="col-lg-2 offset-lg-1 col-md-2 offset-md-1 col-4 btn-not">
					<img class="not-img" src="{{ asset('/user/images/post-1.jpg') }}">
				</div>
			</div>
			<hr>
		</div>
	</div>
</div>

@endsection