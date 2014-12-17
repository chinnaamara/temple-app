App.controller 'RegistrationController', ($scope, $rootScope, RegistrationFactory, DataFactory) ->
	Parse.initialize "Kp6pO0XyctF9YnMzmoDNDO9ShKCIwL9Ev05J2eJQ", "hzDorzQVx03cPlPrSoblQ4rnJ6zsl2tqCGqI4IS4"

	Members = Parse.Object.extend 'Members'
	
	$scope.init = ->
		currentUser = $.parseJSON(localStorage.getItem 'Parse/Kp6pO0XyctF9YnMzmoDNDO9ShKCIwL9Ev05J2eJQ/currentUser')
		if currentUser
			$rootScope.username = currentUser.username
		else
			$location.path '/login'
		return

	$scope.init()

	$scope.createMember = (data) ->
		RegistrationFactory.addMember(data, (res) ->
			if typeof res == 'string'
				showError res
			else
				showSuccess res
		)
		return

	showSuccess = (res) ->
		$scope.$apply(() ->
			$scope.successMessage = true
		)
		console.log res
		return	

	showError = (error) ->
		$scope.$apply(() ->
			$scope.errorMessage = true
		)
		return

	$(".date").datepicker autoclose: true

	$scope.nakshatras = DataFactory.getNakshatras
	return
