adding
count
	|pc|
	pc := PointCounter new.
	self hand points: (pc countPoints: self hand).
	self hand noTrump: (pc countNoTrump: self hand).