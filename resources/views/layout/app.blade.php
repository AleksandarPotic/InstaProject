<!DOCTYPE html>
<html>
	@include('layout.head')
<body>
	@include('layout.header')

	@section('body-part')

	@show

	@include('layout.script')

    @section('script-part')

    @show
</body>
</html>