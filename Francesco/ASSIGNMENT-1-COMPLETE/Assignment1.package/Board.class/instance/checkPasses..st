as yet unclassified
checkPasses: aBids
	"Returns true if last 3 bids are passes"
	|passCount bid|
	
	passCount := 0.
	
	(aBids size >3 )ifTrue:[
		passCount :=0.
		
		1 to: 3 do:[:b|
			
			bid:=aBids at: b.
			bid value = 'pass' ifTrue:[passCount := passCount +1].	
			passCount >2 ifTrue:[^true].			
		]
	]. 
^false.