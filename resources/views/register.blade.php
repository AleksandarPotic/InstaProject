<!DOCTYPE html>
<html>
<head>
	<title>Instapro | Register</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="icon" href="http://icons.iconarchive.com/icons/martz90/circle/512/camera-icon.png" type="image/gif" sizes="16x16">
	<link rel="stylesheet" type="text/css" href="{{ asset('/css/register.css') }}">
</head>
<body>
	<div class="container">
		<div class="row" id="row-mag">
			<div class="col-lg-8 offset-lg-2">
				<div class="row">
					<div class="col-lg-6" id="image-div">
						<img src="{{ asset('/user/images/img-3.png') }}" width="310px" height="430px">
					</div>
					<div class="col-lg-6 text-center" id="login-div" style="background-color: white; border: 0.5px solid gray">
						<div class="row" style="margin-bottom: 20px;">
							<div class="col-12">
								<img src="http://icons.iconarchive.com/icons/martz90/circle/512/camera-icon.png" width="60px" height="60px" style="margin-top: -30px;">
								<font face="Freestyle Script" style="font-size: 60px;"><b>Instapro</b></font>
							</div>
							<div class="col-12 form-group">
								<input type="text" class="form-control radius" name="" placeholder="Enter Nick Name">
							</div>
							<div class="col-12 form-group">
								<input type="email" class="form-control radius" name="" placeholder="Enter Email">
							</div>
							<div class="col-12 form-group">
								<input type="password" class="form-control radius" name="" placeholder="Enter Password">
							</div>
							<div class="col-12 form-group">
								<input type="password" class="form-control radius" name="" placeholder="Confirmed Password">
							</div>
							<div class="col-12 form-group">
								<button type="button" class="btn btn-primary btn-block radius">Sign Up</button>
							</div>
							<div class="col-12">
								or
							</div>
							<div class="col-12" style="margin-top: 10px;">
								<a href="#" style="text-decoration: none; color: #232323;"><i style="font-size:30px" class="fa">&#xf230;</i> Sign Up with Facebook </a>
							</div>
							<div class="col-12">
								<hr>
							</div>
							<div class="col-12">
								Have an account? <a href="/login" style="text-decoration: none;">Log In</a>
							</div>
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


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>