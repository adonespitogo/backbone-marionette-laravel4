@Backbone.Marionette.Renderer.render = (template, data) ->

	full_path = 'backbone/apps/' + template

	path = JST[full_path]

	throw new Error('Renderer: Template \'' + full_path + "\' not found!") unless path?

	t = _.template path, data