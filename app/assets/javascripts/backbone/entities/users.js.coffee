@App.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.User extends Entities.Model
		urlRoot: "users"

	class Entities.UsersCollection extends Entities.PageableCollection
		model: Entities.User
		url: "users"

		state:
			firstPage: 1
			pageSize: 5
			totalRecords: 50

	# class Entities.UsersCollection extends Entities.PaginatedCollection
	# 	model: Entities.User

	# 	pagination_core:
	# 		type: 'GET'
	# 		dataType: 'json'
	# 		url: "users"

	# 	paginator_ui:
	# 		firstPage: 1
	# 		currentPage: 1,
	# 		perPage: 3
	# 		totalPages: 10

	# 	server_api:
	# 		'page' : ->
	# 			@currentPage
	# 		'per_page' : ->
	# 			@perPage

	api =
		setUserEntitties: (users) ->
			@userEntities = users

		pushUser: (user) ->
			@userEntities.add user


		getUserEntities: (cb) ->
			users = new Entities.UsersCollection
			users.fetch
				success : ->
					cb users
			@setUserEntitties users
			users

		newUserInstance: (attr)->
			new Entities.User attr

		fetchUser: (id, cb) ->

			user = @newUserInstance
				id: id
			user.fetch
				success: ->
					cb user

	App.reqres.setHandler "fetch:user", (id, cb) ->
		api.fetchUser id, cb

	App.reqres.setHandler "user:entities", (cb) ->
		api.getUserEntities cb

	App.reqres.setHandler "new:user:entity", (attr) ->
		api.newUserInstance(attr)