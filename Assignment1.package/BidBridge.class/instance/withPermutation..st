accessing
withPermutation: cardList
	| deck |
	deck := cardList == false
		ifFalse: [ Deck new customDeck: cardList ]
		ifTrue: [ Deck new fullDeck shuffle].
	board deck: deck cards.
	self board deal startBidding.