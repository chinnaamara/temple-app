App.controller 'SignUpControler', ($scope) ->
	Parse.initialize "Kp6pO0XyctF9YnMzmoDNDO9ShKCIwL9Ev05J2eJQ", "hzDorzQVx03cPlPrSoblQ4rnJ6zsl2tqCGqI4IS4"
	
	$scope.signUp = (user) ->
		Parse.User.signUp(user.username, user.password, {ACL: new Parse.ACL(), email: user.email, mobileNumber: user.mobileNumber}, {
			success: (user) ->
				console.log user
			error: (error) ->
				alert 'Error: ' + error.message
		})
	return