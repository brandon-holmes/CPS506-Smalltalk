tests
testPlayerNames
	self assert: ((b players at: 1) name) = 'South'.
	self assert: ((b players at: 2) name) = 'West'.
	self assert: ((b players at: 3) name) = 'North'.
	self assert: ((b players at: 4) name) = 'East'.
