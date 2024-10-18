
app.imagesLoaded =

	init: ->

		app.imagesLoaded.go()


	go: ->

		# On load articles
		$("article:not(.article-loaded)").each ->
			article = $(this)
			article.imagesLoaded ->
				article.addClass("article-loaded")
				app.relayout.go() if app.relayout

		# On load backgrounds
		$(".bg:not(.bg-loaded)").each ->
			bg = $(this)

			if bg.find("img")
				imgsrc = bg.find("img").attr("src")

			if bg.attr("data-bg")
				imgsrc = bg.attr("data-bg")
				bg.addClass("bg-loaded")

			if imgsrc
				bg.css
					"background-image": "url('"+imgsrc+"')"		
			bg.imagesLoaded ->
				bg.addClass("bg-loaded")

		# On load images
		$("img:not(.img-loaded)").each ->
			img = $(this)
			img.imagesLoaded ->
				img.addClass("img-loaded")

		# On load all images
		$("body").imagesLoaded ->
			app.relayout.go() if app.relayout


