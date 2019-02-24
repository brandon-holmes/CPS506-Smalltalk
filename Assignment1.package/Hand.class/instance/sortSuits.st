sorting
sortSuits

	self suits do: [ :s|
		s sort: [ :a :b |
			a index < b index
		]	
	]