as yet unclassified
countTons: suitsList
	|tp|
	tp :=0.
	suitsList isEmpty
		ifTrue: [tp := tp+ 3 ].
	suitsList size == 1
		ifTrue: [tp := tp+ 2 ].
	suitsList size == 2
		ifTrue: [tp := tp+ 1 ].
	^tp.