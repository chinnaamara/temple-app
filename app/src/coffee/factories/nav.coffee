App.factory 'NavFactory', () ->
	Parse.initialize "Kp6pO0XyctF9YnMzmoDNDO9ShKCIwL9Ev05J2eJQ", "hzDorzQVx03cPlPrSoblQ4rnJ6zsl2tqCGqI4IS4"
	logout = ->
		Parse.User.logOut()
		return

	return {
		logout: logout
	}