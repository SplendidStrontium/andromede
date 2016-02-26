# app/assets/javascripts/app.rolling.coffee

App.Rolling =
	alert: ->
		alert "Nice!"

$(document).on "click", "[data-behavior~=test-js]", =>
	App.Rolling.alert()
