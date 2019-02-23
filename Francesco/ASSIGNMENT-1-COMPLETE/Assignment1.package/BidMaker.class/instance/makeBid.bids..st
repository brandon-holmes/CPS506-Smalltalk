as yet unclassified
makeBid: aPlayer bids: abids 
	|points longestSuit teammate bid|
	
	points := aPlayer hand points.
	longestSuit := aPlayer hand longestSuit.
	teammate := aPlayer teammate.
	
"	points < 13 ifTrue:[
		 bid:=Bid new  player: aPlayer.
		 bid value: 'pass'. 	
			^bid.
		].
	"
(self checkOpening: abids) ifTrue: [^self open:aPlayer bids:abids] ifFalse:[^self answer:aPlayer bids: abids.].

