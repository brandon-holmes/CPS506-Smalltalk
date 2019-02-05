instance initalization
initialize
	board isNil
		ifFalse: [ ^ self ].
	board := Board new.
