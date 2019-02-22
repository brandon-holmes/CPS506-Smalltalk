tests
testFullHand 	
 	p addCard: '1'.
	self assert: (p hand) ~= nil.