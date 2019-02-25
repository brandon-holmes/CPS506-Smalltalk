as yet unclassified
countPoints: hand
	|tp|
	tp:=0.
	hand suits
		do: [ :s | 
				tp:= tp+ (self countFaceCards: s).
				tp:= tp+ (self countTons: s). ].
	^tp.