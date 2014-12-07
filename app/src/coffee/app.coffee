
app = angular.module 'TempleApp', ['ui.router']

app.config(($stateProvider) ->
	$stateProvider
	.state('start', {
		url: ''
		views: {
			"viewA@": {templateUrl:"html/nav.html"},
			"viewB@": {templateUrl:"html/login.html"}
		}	
	})
);
