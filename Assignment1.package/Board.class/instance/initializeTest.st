initialization
initializeTest
	| p1 p2 p3 p4 |
	bids := Array new.
	p1 := Player new name: 'North'.
	p3 := Player new name: 'East'.
	p2 := Player new name: 'South'.
	p4 := Player new name: 'West'.
	players := {p2.
	p4.
	p1.
	p3}