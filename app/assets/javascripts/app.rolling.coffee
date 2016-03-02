# app/assets/javascripts/app.rolling.coffee



App.Rolling =
	clear: ->
		$("textarea#roll_result_field").val('')
	rolla: (tDice) ->
		return Math.ceil(Math.random() * tDice)
	rollme: (myroll) ->
		num = myroll.numdice
		res = while num -= 1
			res.push(App.Rolling.rolla(myroll.numfaces))

		App.Rolling.print(String(res))

	print: (str) ->
		$("textarea#roll_result_field").val(str)
	verify: (inp_dice) ->
		if ( !isFinite(inp_dice) || inp_dice < 1 || inp_dice > 16)
			myerror = "You wrote #{ inp_dice }; please enter a sensible number of dice"
			App.Rolling.print(myerror)
			return false
		else
			return true

$(document).on "click", "[data-behavior~=test-js]", =>
	alert "non-operational, apologies"

$(document).on "click", "[data-behavior~=clear-outp]", =>
	App.Rolling.clear()

$(document).on "click", "[data-behavior~=roll-dice]", =>
	nDice = document.getElementById('num_d').value
	tDice = document.getElementById('type_d').value
	if ( App.Rolling.verify(nDice) )
		myRoll = numfaces: tDice, numdice: nDice
		try
			App.Rolling.rollme(myRoll)
		catch e
			console.log 'caught the error thrown manually'
			App.Rolling.print('an error occurred')
