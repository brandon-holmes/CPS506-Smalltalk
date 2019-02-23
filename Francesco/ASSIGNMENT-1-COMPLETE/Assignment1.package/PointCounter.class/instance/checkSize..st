as yet unclassified
checkSize: hand
	|dt|
	dt :=0.
	
	"check suit sizes"
	hand suits do: [ :s|
		(dt>1) ifTrue:[^false].
		s size <2 ifTrue:[^false].	
		s size = 2 ifTrue:[ dt := dt +1].
	].

	^ true .