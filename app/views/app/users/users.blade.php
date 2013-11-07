<script type="text/template" id='user-list-layout'>
	<div class='container'>
		<div id='users-region'></div>
	</div>
</script>

<script type="text/template" id='user-list-view'>
	<table class='table table-striped'>
		<thead>
			<tr>
				<th>ID</th>
				<th>first name</th>
				<th>last name</th>
				<th>Options</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<div class='pagination-holder'>
		<ul class='pagination'>
		<li><a href="#" class='prev'>Prev</a></li>
		<li><a href="#" class='next'>Next</a></li>
		</ul>
	</div>
</script>

<script type="text/template" id='user-list'>
	<td><%= id %></td>
	<td><%= first_name %></td>
	<td><%= last_name %></td>
	<td class='user-options'>
		<a class='btn btn-success'>Edit</a>
		<a class='btn btn-danger'>Delete</a>
	</td>
</script>

<script type="text/template" id='panel-view'>
	<a href="#users/new" class='btn btn-primary' id='add-new-user'>Add User</a>
	<br>
	Total Users: <%= items.length %>
</script>

<script type="text/template" id='empty-user-list'>
	<td colspan='3'>No users found</td>
</script>