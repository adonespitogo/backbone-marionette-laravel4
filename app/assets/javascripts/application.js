// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear in whatever order it 
// gets included (e.g. say you have require_tree . then the code will appear after all the directories 
// but before any files alphabetically greater than 'application.js' 
//
// The available directives right now are require, require_directory, and require_tree
//
//= require lib/jquery
//= require lib/underscore
//= require lib/backbone
//= require lib/backbone-bindings
//= require lib/backbone.paginator
//= require lib/backbone.pageable
//= require lib/backbone.marionette
//= require lib/backbone.transition
//= require lib/bootstrap
//= require_tree ./backbone/config
//= require backbone/app
//= require_tree ./backbone/views/_base
//= require_tree ./backbone/apps
//= require_tree ./backbone/entities
//= require_self

$(document).ready(function(){
	App.start();
});