initialization
initialize
	| p1 p2 p3 p4 |
	Transcript show: 'init'.
	beenOpened := false.
	bids := OrderedCollection new.
	p1 := Player new name: 'North'.
	p3 := Player new name: 'East'.
	p2 := Player new name: 'South'.
	p4 := Player new name: 'West'.
	
	p1 teammate: p2.
	p2 teammate: p1.
	
	p3 teammate: p4.
	p4 teammate: p3.
	
	players := {p2.p4.p1.p3}