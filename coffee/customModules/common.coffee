
app.common =
	init: ->


		# Menu por mejorar

		$hnav       = $(".header-nav")
		$hnavbutton = $(".header-hamburger")
		
		$hnavbutton.click ->
			if !$hnav.hasClass("in")
				$hnav.addClass("in")
			else
				$hnav.removeClass("in").addClass("out")
				setTimeout ->
					$hnav.removeClass("out")
				,500

		$hnav.find("ul li a").each ->
			ul_children = $(this).closest("li").find(">ul")
			if ul_children.length
				$(this).append("<span class='fa fa-angle-right'></span>")

		$hnav.find("ul li ul").prepend "<li><a href='#' class='header-nav-back'><span class='fa fa-angle-left'></span> Atrás</a></li>"

		$hnav.find("ul li a").click (e) ->
			ul_children = $(this).closest("li").find(">ul")
			if ul_children.length
				e.preventDefault()
				ul_children.addClass("in")

		$hnav.find(".header-nav-back").click (e) ->
			e.preventDefault()
			ul_parent = $(this).closest("ul")
			ul_parent.removeClass("in").addClass("out")
			setTimeout ->
				ul_parent.removeClass("out")
			,500


		# É fix = Í
		$("h1,h2,h3,h4").each ->
			text = $(this).text()
			if text.indexOf("í") > -1
				newtext = text.replace("í","<span class='ii'>í</span>")
				$(this).html newtext


		#app.forms.validate $("#form-contact"), ->
		#	onRecaptchaSubmit()
			


###
onRecaptchaSubmit = (token) ->
	app.forms.validate $("#form-contact"), ->
		$("#form-contact").submit()

###
