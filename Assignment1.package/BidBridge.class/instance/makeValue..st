as yet unclassified
makeValue: suit
	1 to: (suit size) do: [ :i |
		suit at: i put: ((suit at: i) value ).		
		 ].
	^suit.