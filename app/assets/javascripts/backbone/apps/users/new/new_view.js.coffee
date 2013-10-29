@App.module "UsersApp.New", (New, App, Backbone, Marionette, $, _) ->

	class New.Form extends App.Views.ItemView
		template: "#new-user-form"

		triggers:
			"submit form" : "submit:new:user"
			"click .cancel" : "cancel:new:user"

		serialize : ->
				username: this.$("input[name='username']").val(),
				first_name: this.$("input[name='first_name']").val(),
				last_name: this.$("input[name='last_name']").val()