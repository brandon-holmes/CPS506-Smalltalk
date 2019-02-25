as yet unclassified
checkOpening:  aBids

	"use this if opening means: opening for TEAM"
"	(aBids size >=2) ifTrue:[
		(aBids at: 1)  value class = Integer class  ifTrue:[^false].
		]."
	
	"use this if opening means: opening for GAME"
	(aBids size <4) ifTrue:[
		1 to: aBids size do: [ :b |
			(aBids at: b)  value = 'pass'  ifFalse:[
				"Transcript show: 'NON PASS FOUND. I DO NOT OPEN'."
				^false].
		].
		^true.
		].
	^false.
	