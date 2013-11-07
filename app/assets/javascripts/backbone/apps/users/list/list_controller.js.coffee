@App.module "UsersApp.List", (List, App, Backbone, Marionette, $, _) ->

	List.Controller =

		listUsers: ->
			App.request "user:entities", (users) =>
				@layout = @getLayoutView()
				@layout.on "show", =>
					@showUsers users

				App.mainRegion.show(@layout)

		showUsers: (users) ->
			usersView = @getUsersView users
			@layout.usersRegion.show usersView

		getUsersView: (users) ->

			view = new List.Users
						collection: users

			view.on "userlist:next", (args) ->
				args.collection.getNextPage() unless !args.collection.hasNext()

			view.on "userlist:prev", (args) ->
				args.collection.getPreviousPage() unless !args.collection.hasPrevious()

			view.on "itemview:edit:user:clicked", (args) ->
				user = args.model

				App.navigate "#users/"+user.id+"/edit", trigger: true

			# view.on "itemview:edit:user:clicked", (args) ->
			# 	editView = App.request "edit:user:view", args.model
			# 	console.log args

			view.on "itemview:delete:user:clicked", (args) ->
				if confirm "Are you sure you want to delete "+args.model.get('first_name')+" ?"
					args.$el.fadeOut ->
						args.model.destroy()


		getLayoutView: ->
			new List.Layout