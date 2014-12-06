var App = angular.module 'TempleApp', ['ui.router']

App.config(($statePovider) ->
	$statePovider.
	state('home', {
		url: ''
		views: {
			"viewA@": {templateUrl:"nav.html", controller: "LoginController"},
			"viewB@": {templateUrl:"login.html", controller: "LoginController"}
		}	
	})
);
