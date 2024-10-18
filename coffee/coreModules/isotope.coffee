
app.isotope = 

	init: ->
		if $(".isotope").length
			$(".isotope").isotope()

	relayout: ->

		if $(".isotope").length
			$(".isotope").isotope
				relayout: true

