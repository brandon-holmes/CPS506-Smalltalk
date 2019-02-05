as yet unclassified
makeSpace: spacing
	|space blank|
	blank:=' '.
	space:=''.
	(spacing = 0)
		ifTrue: [ ^space ].
	1 to: (spacing*2+2) do: [ :i |
		space := space, blank.
	] .
	^space.