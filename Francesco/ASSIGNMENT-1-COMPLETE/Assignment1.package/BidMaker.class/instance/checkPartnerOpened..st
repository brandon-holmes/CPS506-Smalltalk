as yet unclassified
checkPartnerOpened: aBids

		(aBids size <=2) ifTrue:[^false].
		(aBids size <4) ifTrue:[
			(aBids at: 2 ) value = 'pass' ifFalse:[^true].
		].
	^true.