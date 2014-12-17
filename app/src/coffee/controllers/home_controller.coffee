App.controller 'HomeController', ($scope, $rootScope, $location) ->
	$scope.init = ->
		currentUser = $.parseJSON(localStorage.getItem 'Parse/Kp6pO0XyctF9YnMzmoDNDO9ShKCIwL9Ev05J2eJQ/currentUser')
		if currentUser
			$rootScope.username = currentUser.username
		else
			$location.path '/login'
		return

	$scope.init()
	return