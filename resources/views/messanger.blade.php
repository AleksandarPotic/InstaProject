@extends('layout.app')

@section('body-part')
<div class="container" id="messanger-all">
	<div class="row">
		<div class="col-lg-8 offset-lg-2 col-md-12" id="all-bck">
			<div class="col-lg-12">
				<br>
				<input type="text" class="form-control search" id="search-1" name="" placeholder="Search friend...">
				<hr>
			</div>
			<div class="col-lg-12 all-bck-2">
					<div class="row mess-one">
						<div class="col-lg-2 col-md-2 col-4">
							<a href="/chat">
								<img class="logo-messanger" src="{{ asset('/user/images/user-logo.jpg') }}">
							</a>
						</div>
						<div class="col-lg-6 col-md-6 col-8">
							<span class="nick-name-messanger"><b>tove_lo</b></span>
							<br>
							<span>Hello my friend!!!</span>
							<span class="time-active-1"><h6>Active 1h ago</h6></span>
						</div>
						<div class="col-lg-4 col-md-4 col-8 text-right">
							<h6 class="time-active-2">Active 1h ago</h6>
						</div>
					</div>
				
				<div class="row mess-one">
					<div class="col-lg-2 col-md-2 col-4">
						<a href="#">
							<img class="logo-messanger" src="{{ asset('/user/images/user-logo-2.jpg') }}">
						</a>
					</div>
					<div class="col-lg-6 col-md-6 col-8">
						<span class="nick-name-messanger"><b>tove_lo</b></span>
						<br>
						<span>Hello my friend!!!</span>
						<span class="time-active-1"><h6>Active 1h ago</h6></span>
					</div>
					<div class="col-lg-4 col-md-4 col-8 text-right">
						<h6 class="time-active-2">Active 1h ago</h6>
					</div>
				</div>

				<div class="row mess-one">
					<div class="col-lg-2 col-md-2 col-4">
						<a href="#">
							<img class="logo-messanger" src="{{ asset('/user/images/user-logo-1.jpg') }}">
						</a>
					</div>
					<div class="col-lg-6 col-md-6 col-8">
						<span class="nick-name-messanger"><b>tove_lo</b></span>
						<br>
						<span>Hello my friend!!!</span>
						<span class="time-active-1"><h6>Active 1h ago</h6></span>
					</div>
					<div class="col-lg-4 col-md-4 col-8 text-right">
						<h6 class="time-active-2">Active 1h ago</h6>
					</div>
				</div>
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
@endsection