App.controller 'NavController', ($scope, $rootScope, NavFactory, $location) ->
	$scope.logout = ->
		NavFactory.logout()
		$rootScope.username = null
		$location.path '/login'
		return
	return