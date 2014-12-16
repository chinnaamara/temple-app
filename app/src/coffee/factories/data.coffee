App.factory 'DataFactory', () ->
	nakshatras = [
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

	return {
		getNakshatras: nakshatras
	}