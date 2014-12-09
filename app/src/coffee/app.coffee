
App = angular.module 'TempleApp', ['ui.router']

App.config(($stateProvider) ->
	$stateProvider
	.state('start', {
		url: ''
		views: {
			"viewA@": {templateUrl:"html/nav.html"},
			"viewB@": {templateUrl:"html/login.html", controller:"LoginController"}
		}	
  	})
	.state('signup', {
		url: '/signup'
		views: {
			"viewA@": {templateUrl:"html/nav.html"},
			"viewB@": {templateUrl:"html/signup.html", controller:"SignUpControler"}
		}	
	})
);
