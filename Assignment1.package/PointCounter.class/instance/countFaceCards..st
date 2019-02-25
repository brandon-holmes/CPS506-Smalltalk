arithmetic
countFaceCards: cardList
	|tp|
	tp := 0.
	
	cardList do: [ :card | 
			card value = 'J'
				ifTrue: [tp := tp+ 1 ].
			card value = 'Q'
				ifTrue: [tp := tp+ 2 ].
			card value = 'K'
				ifTrue: [ tp := tp+ 3 ].
			card value = 'A'
				ifTrue: [tp := tp+ 4 ] ].
	^ tp.