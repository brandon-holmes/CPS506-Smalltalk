as yet unclassified
startBidding
	|over player bidMaker failsafe|
	failsafe := 0.
	over := false.
	player:= 0.
	bidMaker := BidMaker new.

[over] whileFalse: [ 
		player := player \\ 5.
		player = 0 ifTrue:[player:=1].
		failsafe := failsafe + 1.
		failsafe >=100 ifTrue:[Transcript show: 'failsafe'. over := 		true.].
		self bids addFirst: (bidMaker makeBid:(self players at: 			player )bids:self bids ).
		player := player + 1.
		(self checkPasses: self bids) ifTrue:  [over:=true.].
].

	self declarer: ((self bids) at: 4) player name.