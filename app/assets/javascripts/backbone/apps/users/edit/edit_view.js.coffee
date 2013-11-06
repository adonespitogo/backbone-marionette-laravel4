@App.module "UsersApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->

	
	class Edit.Form extends Marionette.ItemView

		template: '#edit-user-view'

		triggers:
			"submit form" :
				event: "submit:edit:form"
				preventDefault: true
				
		ui:
			submitBtn : "button[type=submit]"


		serialize : =>
				id: @$("input[name='id']").val(),
				username: @$("input[name='username']").val(),
				first_name: @$("input[name='first_name']").val(),
				last_name: @$("input[name='last_name']").val()