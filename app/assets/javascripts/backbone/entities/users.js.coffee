@App.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.User extends Entities.Model
		urlRoot: "users"

	class Entities.UsersCollection extends Entities.Collection
		model: Entities.User
		url: "users"

		# paginated_core:
		# 	type: "GET"
		# 	dataType: 'json'
		# 	url: "users"

		# paginator_ui:
		# 	firstPage: 0
		# 	currentPage: 0
		# 	perPage: 1
		# 	totalPages: 10

		# server_api:
		# 	$filter: '',
		# 	$top: =>
		# 		@perPage

		# 	$skip: =>
		# 		@currentPage * @perPage

		# 	$orderBy: 'last_name'

		# 	$format: 'json'
		# 	$inlinecount: 'allpages'

		# parse: (response) =>
		# 	console.log response

		# 	tags = response

		# 	@totalPages =  Math.ceil(response.__count / @perPage)

		# 	tags


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