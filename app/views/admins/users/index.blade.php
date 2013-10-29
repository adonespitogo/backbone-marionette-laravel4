@extends('admins.users.templates.base')

@section('content')
	<div class='container'>
		<div class='row'>
			<div class='col-lg-4'>
				<h2>Manage Users</h2>
			</div>
		</div>
		<div class='row'>
			<div class='col-lg-12'>
				<table class='table table-striped table-bordered'>
					<thead>
						<tr>
							<th>
								<a href="#">Name <span class='caret'></span></a>
							</th>
							<th>
								<a href="#">Type <span class='caret'></span></a>
							</th>
							<th>
								<a href="#">Barangay <span class='caret'></span></a>
							</th>
							<th>
								<a href="#">Status <span class='caret'></span></a>
							</th>
							<th>Options</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							@include('admins.users.list')
						</tr>
						<tr>
							@include('admins.users.list')
						</tr>
						<tr>
							@include('admins.users.list')
						</tr>
						<tr>
							@include('admins.users.list')
						</tr>
						<tr>
							@include('admins.users.list')
						</tr>
						<script type="text/html" id='edit-user-template'>
							@include('admins.users.edit')
						</script>
						<script type="text/html" id='list-user-template'>
							@include('admins.users.list')
						</script>
					</tbody>
				</table>
			</div>
		</div>
	</div>
@stop

@section('scripts')
	{{HTML::script('js/temp/users.js')}}
@stop


											
										<!-- <form role='form'>
											<div class='row'>
												<div class='col-lg-4'>
													<label>Username:</label>
													<input type='text' class='form-control' value='apitogo'>
												</div>
												<div class='col-lg-4'>
													<label>Full Name:</label>
													<input type='text' class='form-control' value='Adones Pitogo'>
												</div>
												<div class='col-lg-4'>
													<label>Las:</label>
													<input type='text' class='form-control' value='apitogo'>
												</div>
											</div>
										</form> -->
