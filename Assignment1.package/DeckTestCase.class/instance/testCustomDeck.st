tests
testCustomDeck
	|first |
	d:= Deck new customDeck: #(38 48 11 6 20 17 46 8 37 43 7 52 36 10 25 49 50 16 33 5 42 32 9 29 1 51 26 18 41 15 40 31 35 45 4 12 39 30 19 21 2 34 23 3 27 22 47 14 24 28 13 44).
	first:= ((d cards at: 1) value).
	self assert: first = 'K'.