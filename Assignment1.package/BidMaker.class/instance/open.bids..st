instance creation
open: aPlayer bids: abids
	|ls bid|
	ls:=aPlayer hand longestSuit.
	
	"if less than 13 points pass"
		(aPlayer hand) points < 13 ifTrue:[
		 bid:=Bid new  player: aPlayer.
		 bid value: 'pass'. 	
			^bid.
		].
	
	"bid 1 of longest suit if longest suit has 5 or more cards"
	ls size > 4 ifTrue: [
		bid:=Bid new player: aPlayer. 
		bid suit:((ls at:1) suit).
		bid value: 1.
		^bid].
	"bid 1 no trump if have notrump hand and 16 or more points"
	(aPlayer hand points > 15) & (aPlayer hand noTrump) ifTrue:[
		bid:= Bid new player: aPlayer; 
		suit: 'noTrump'.
		bid value: 1.
		^bid. ].
	
	"else bid longest suit player has"
		bid:=Bid new player: aPlayer. 
		bid suit:((ls at:1) suit).
		bid value: 1.
		^bid.
			
