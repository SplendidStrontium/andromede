# app/assets/javascripts/app.computress.coffee

$(document).on "click", "[data-behavior~=computress-listen-clear]", =>
	$("#user_inp").val('')
