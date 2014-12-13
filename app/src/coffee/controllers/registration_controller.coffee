App.controller 'RegistrationController', ($scope) ->
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
			address: data.address
			nakshatra: data.nakshatra
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

	$scope.nakshatras = [
		{id: 1, name: 'Ashvini'},
		{id: 2, name: 'Bharani'},
		{id: 3, name: 'Krittika'},
		{id: 4, name: 'Rohini'},
		{id: 5, name: 'Mrigashira'},
		{id: 6, name: 'Ardra'},
		{id: 7, name: 'Punarvasu'},
		{id: 8, name: 'Pushya'},
		{id: 9, name: 'Ashlesha'},
		{id: 10, name: 'Megha'},
		{id: 11, name: 'Purva Phalguni'},
		{id: 12, name: 'Uttara Phalguni'},
		{id: 13, name: 'Hasta'},
		{id: 14, name: 'Chitra'},
		{id: 15, name: 'Svathi'},
		{id: 16, name: 'Vishakha'},
		{id: 17, name: 'Anuradha'},
		{id: 18, name: 'Jyeshtha'},
		{id: 19, name: 'Mula'},
		{id: 20, name: 'Purva Ashadha'},
		{id: 21, name: 'Uttara Ashadha'},
		{id: 22, name: 'Shravana'},
		{id: 23, name: 'Dhanistha'},
		{id: 24, name: 'Shatabhisha'},
		{id: 25, name: 'Purva Bhadrapada'},
		{id: 26, name: 'Uttara Bhadrapada'},
		{id: 27, name: 'Revati'}
	]
	return
