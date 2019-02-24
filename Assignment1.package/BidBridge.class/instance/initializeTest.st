instance initalization
initializeTest
	board isNil
		ifFalse: [ ^ self ].
	board := Board new.
