# app/assets/javascripts/app.computress.coffee


###
MAIN COMPUTRESS
###

App.Computress =
	clear: ->
		$("#hm_disp_txt").val('')
	greet: ->
		App.Computress.prints("Welcome!")
	poweron: ->
		App.Computress.clear()
	powerdown: ->
		App.Computress.prints('power down')
	prints: (str) ->
		$("#hm_disp_txt").append(str + "\n")


$(document).on "click", "[data-behavior~=computress-listen]", =>
	App.Computress.prints("ping received")

$(document).on "click", "[data-behavior~=computress-listen-clear]", =>
	App.Computress.clear()

$(document).on "click", "[data-behavior~=computress-power]", =>
	App.Computress.greet()

$(document).on "click", "[data-behavior~=computress-reload]", =>
	location.reload()


