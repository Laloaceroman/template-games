
app = []

$(document).ready ->
	for module,moduleApp of app
		moduleApp.init() if moduleApp.init


