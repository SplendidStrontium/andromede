# app/assets/javascripts/app.rolling.coffee


App.Rolling =
	clear: ->
		$("#roll_result_field").val('')
	rolla: (tDice) ->
		return Math.ceil(Math.random() * tDice)
	rollme: (myroll) ->
		myres = (App.Rolling.rolla(myroll.numfaces) for [1..myroll.numdice])
		myres.sort()
		if !(myroll.numdrop == 0 )
			myres.shift()
		if (myroll.issum)
			mystr = App.Rolling.addbrkts(String(myres))
			sum = myres.reduce (x, y) -> x + y
			mystr = mystr + " = " + sum
			App.Rolling.prints(mystr)
		else
			mystr = App.Rolling.addbrkts(String(myres))
			App.Rolling.prints(mystr)
	prints: (str) ->
		$("#roll_result_field").append(str + "\n")
	addbrkts: (str) ->
		return "[" + str + "]"
	verify: (aRoll) ->
		if ( !isFinite(aRoll.numfaces) )
			return false
		else
			return true

$(document).on "click", "[data-behavior~=test-js]", =>
	alert "non-operational, apologies"

$(document).on "click", "[data-behavior~=clear-outp]", =>
	$("#roll_result_field").val('')

$(document).on "click", "[data-behavior~=reload-pg]", =>
	location.reload()

$(document).on "click", "[data-behavior~=roll-dice]", =>
	nDice = Number(document.getElementById('num_die').value)
	tDice = Number(document.getElementById('type_die').value)
	nDrop = Number(document.getElementById('num_drop').value)
	isSum = document.getElementById('ami_sum').value
	if (isSum == 'summed')
		isSum = true
	else
		isSum = false
	myRoll = numfaces: tDice, numdice: nDice, numdrop: nDrop, issum: isSum
	if ( App.Rolling.verify(myRoll) )
		try
			App.Rolling.rollme(myRoll)
		catch e
			console.log 'caught the error thrown manually'
			App.Rolling.prints('an error occurred')
	else
		App.Rolling.prints('Something went wrong with your input...')
