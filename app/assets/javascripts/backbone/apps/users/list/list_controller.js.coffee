@App.module "UsersApp.List", (List, App, Backbone, Marionette, $, _) ->

	List.Controller =

		listUsers: ->
			App.request "user:entities", (users) =>
				@layout = @getLayoutView()
				@layout.on "show", =>
					@showPanel users
					@showUsers users

				App.mainRegion.show(@layout)

		showPanel: (users)->
			panelView = @getPanelView users
			panelView.on "add:new:user", ->
				App.navigate("#users/new", trigger: true)

			@layout.panelRegion.show panelView

		showUsers: (users) ->
			usersView = @getUsersView users
			@layout.usersRegion.show usersView

		getUsersView: (users) ->

			view = new List.Users
						collection: users

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


		getPanelView: (users)->
			new	List.Panel
				collection: users

		getLayoutView: ->
			new List.Layout