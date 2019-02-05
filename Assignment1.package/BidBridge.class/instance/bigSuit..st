tests
bigSuit:player
	| bigSuit|
		bigSuit:=0.
		(player hand spades size >= bigSuit) 
			ifTrue:[ bigSuit:= (player hand spades) size ].
		(player hand hearts size >= bigSuit) 
			ifTrue:[ bigSuit:= (player hand hearts) size ].
		(player hand diamonds  size >= bigSuit) 
			ifTrue:[ bigSuit:= (player hand diamonds) size ].
		(player hand clubs size >= bigSuit) 
			ifTrue:[ bigSuit:= (player hand clubs) size ].
	^bigSuit asInteger