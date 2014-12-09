App.controller 'LoginController', ($scope, $location) ->
	Parse.initialize "Kp6pO0XyctF9YnMzmoDNDO9ShKCIwL9Ev05J2eJQ", "hzDorzQVx03cPlPrSoblQ4rnJ6zsl2tqCGqI4IS4"

	$scope.signIn = (credentials) ->
		$scope.loginFail = false
		Parse.User.logIn(credentials.username, credentials.password, {
			success: (user) ->
				$scope.$apply(() ->
					$location.path 'home'
				)
			error: (user, error) ->
				# alert error.message
				showError()
		})
		return

	showError = ->
		$scope.$apply(() ->
			$scope.loginFail = true
			$scope.errorMessage = "Invalid Username or Password !"
		)
	return
