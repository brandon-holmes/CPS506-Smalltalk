accessing
answer: aPlayer bids: aBids
	|bid pBid s|
	
		"initialize pBid if partners last bid was not a pass"
		(aBids size > 1 ) ifTrue:[
				(aBids at: 2) value = 'pass' ifFalse:[
					pBid := aBids at:2.
				].
		].
	
		( self checkPartnerOpened: aBids ) ifFalse:[
			"if less than 13 points pass"
		(aPlayer hand) points < 13 ifTrue:[
		 		bid:=Bid new  player: aPlayer.
				bid value: 'pass'. 	
				^bid.
			].
		].
	
		aPlayer hand points < 6 ifTrue:[
			bid:= Bid new player: aPlayer.
			bid value: 'pass'.	
			^bid.].
		
		(aPlayer hand points between: 6 and: 7 )ifTrue:[
		"	s:= pBid suit.
			((aPlayer hand s size) >2) 
				ifTrue:[ ^ self topBid:aPlayer bids: aBids level: 1 suit: s ]
				ifFalse:[	bid:= Bid new player: aPlayer.
					bid value: 'pass'.	
					^bid.
				]."

		].
		
		
		(aPlayer hand points between: 8 and: 9 )ifTrue:[
			
		].
	
		(aPlayer hand points between: 10 and: 12 )ifTrue:[
			
		].
		
	aPlayer hand points > 12 ifTrue:[
		self topBid: aPlayer bids: aBids  level: 1].
	
	
bid:= Bid new player: aPlayer.
			bid value: 'pass'.	
			^bid.
	
