as yet unclassified
longestSuit
	|lsi ls suit|
	lsi := (self suits at: 1) size.
	ls := self suits at: 1.
	
	2 to: (self suits size) do: [ :s|
		suit := self suits at: s.
		suit size > lsi ifTrue:[ lsi:= suit size. ls := suit ].
	].
	^ ls.