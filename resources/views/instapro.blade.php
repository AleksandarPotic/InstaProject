<!DOCTYPE html>
<html>
<head>
	<title>Instapro</title>
	@include('layout.head')
</head>
<body>

<div id="app">
	<MyHeader :auth_user_id="{{ Auth::user()->id }}"></MyHeader>

	<router-view :auth_user_id="{{ Auth::user()->id }}" :auth_user="{{ Auth::user() }}" style="margin-bottom: 80px;"></router-view>
</div>

<script src="{{ asset('/js/app.js') }}"></script>
@include('layout.script')
</body>
</html>