as yet unclassified
checkStoppers: hand
	|s1 s2 s3 s4 s1g s2g s3g s4g|

	s1:= hand suits at: 1.
	s2:= hand suits at: 2.
	s3:= hand suits at: 3.
	s4:= hand suits at: 4.
	
	s1g:=false.
	s2g:=false.
	s3g:=false.
	s4g:=false.
	
	
	s1 do: [ :c| c value = 'A' ifTrue:[s1g := true].
					c value = 'K' ifTrue:[s1g := true].
					(c value = 'Q') & (s1 size >3) ifTrue:[s1g := true].
					(c value = 'J' ) & (s1 size >4) ifTrue:[s1g := true].].
				
	s2 do: [ :c| c value = 'A' ifTrue:[s2g := true].
					c value = 'K' ifTrue:[s2g := true].
					(c value = 'Q') & (s2 size >3) ifTrue:[s2g := true].
					(c value = 'J' ) & (s2 size >4) ifTrue:[s2g := true].].			
							
	s3 do: [ :c| c value = 'A' ifTrue:[s3g := true].
					c value = 'K' ifTrue:[s3g := true].
					(c value = 'Q') & (s3 size >3) ifTrue:[s3g := true].
					(c value = 'J' ) & (s3 size >4) ifTrue:[s3g := true].].
				
	s4 do: [ :c| c value = 'A' ifTrue:[s4g := true].
					c value = 'K' ifTrue:[s4g := true].
					(c value = 'Q') & (s4 size >3) ifTrue:[s4g := true].
					(c value = 'J' ) & (s4 size >4) ifTrue:[s4g := true].].	


	^(s1g & s2g  & s3g  & s4g).