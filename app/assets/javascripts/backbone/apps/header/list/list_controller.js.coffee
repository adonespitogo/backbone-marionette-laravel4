@App.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->

	List.Controller =

		showNav: ->
			links = @getHeaderLinks()
			view = @getHeaderview(links)
			App.headerRegion.show(view)

		getHeaderLinks: ->
			
			new Backbone.Collection [
				{ href: '#home', name: 'Home', trigger: true }
				{ href: '#users', name: 'Users', trigger: true}
				{ href: '#logout', name: 'Logout', trigger: false}
			]

		getHeaderview: (links) =>

			view = new List.HeaderLinks
						collection: links

			view.on "itemview:clicked:header:link", (args) ->
				$(args.el).siblings().removeClass('active')
				$(args.el).addClass('active')
				App.navigate(args.model.get('href'), trigger: args.model.get('trigger'))

			view