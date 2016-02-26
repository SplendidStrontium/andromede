window.App ||= {}

###
initializes bootstrap tooltips
but doesnt work temporarily
###
App.init = ->
###
	$("a, span, i, div").tooltip()
###

$(document).on "page:change", ->
	App.init()
