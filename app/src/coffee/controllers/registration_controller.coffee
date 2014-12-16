App.controller 'RegistrationController', ($scope, DataFactory) ->
	Parse.initialize "Kp6pO0XyctF9YnMzmoDNDO9ShKCIwL9Ev05J2eJQ", "hzDorzQVx03cPlPrSoblQ4rnJ6zsl2tqCGqI4IS4"

	Members = Parse.Object.extend 'Members'
	$scope.createMember = (data) ->
		console.log data
		member = new Members()
		member.save({
			name: data.name,
			fatherName: data.fatherName,
			mobileNumber: data.mobileNumber,
			dob: data.dob,
			address: data.address,
			nakshatra: data.nakshatra,
			gotra: data.gotra
		}, {
			success: (object) ->
				showSuccess(object)
			error: (error) ->
				showError(error)
		})
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
