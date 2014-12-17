App.factory 'RegistrationFactory', () ->
	Parse.initialize "Kp6pO0XyctF9YnMzmoDNDO9ShKCIwL9Ev05J2eJQ", "hzDorzQVx03cPlPrSoblQ4rnJ6zsl2tqCGqI4IS4"

	Members = Parse.Object.extend 'Members'

	createMember = (data, callback) ->
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
				callback object
			error: (error) ->
				callback error
		})
		return

	return {
		addMember: createMember
	}
