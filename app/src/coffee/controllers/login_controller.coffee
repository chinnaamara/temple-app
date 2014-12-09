App.controller 'LoginController', ($scope) ->
	Parse.initialize "Kp6pO0XyctF9YnMzmoDNDO9ShKCIwL9Ev05J2eJQ", "hzDorzQVx03cPlPrSoblQ4rnJ6zsl2tqCGqI4IS4"

	$scope.signIn = (credentials) ->
		Parse.User.logIn(credentials.username, credentials.password, {
			success: (user) ->
				console.log user
			error: (error) ->
				alert error.message	
		})
		return
