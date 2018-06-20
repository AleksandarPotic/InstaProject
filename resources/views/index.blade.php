@extends('layout.app')

@section('body-part')
	<div id="app">
		<div class="container" id="post-all">
			<div class="row">
				@foreach($posts as $po)
				<div class="col-lg-8 offset-lg-2 col-sm-12 col-12 post-c">
					<div class="row post-user">
						<div class="col-lg-1 col-sm-1 col-2">
							<img class="logo-post" src="{{ asset('/user/images/user-logo.jpg') }}">
						</div>
						<div class="col-lg-8 col-sm-8 col-7">
							<b></b>
							<br>

						</div>
						<div class="col-lg-3 col-sm-3 col-3 text-right">
							2 hours ago
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<img class="post-img" src="{{ asset('/user/images/post-1.jpg') }}">
						</div>
					</div>
					<div class="row post-lk">
						<div class="col-lg-12">
							<i class="far fa-heart hrt-1"></i>
							<i class="far fa-comments com"></i>
						</div>
						<div class="col-lg-12">
							<b>1.4k likes</b>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-12 com-mg">
							<b id="hello">Tove Lo</b> <span> Hello World!!!</span>
							<br>
						</div>
						<div class="col-lg-12 col-12 com-mg">
							<b id="hello">Tove Lo</b> <span> Hello World!!!</span>
							<br>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<hr>
							<input type="text" class="form-control radius commentar" name="" placeholder="Add commentar...">
							<br>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
@endsection

@section('script-part')
	<script src="{{ asset('/js/app.js') }}"></script>
	@endsection