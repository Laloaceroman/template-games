
app.relayout =

	init: ->

		app.relayout.go()

		# On load window
		$(window).on "load", ->
			app.relayout.go()

		# On resize window
		$(window).resize ->
			app.relayout.go()
	

	go: ->

		if app.verticalalign
			app.verticalalign()

		if app.isotope
			app.isotope.relayout()
