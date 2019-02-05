printing
printOn: writeOut
	| playerList wSpacing wSpace nsSpacing nsSpace w tmp tmp2|
	playerList:= self board players.
	wSpacing:= self bigSuit: (playerList at:2).
	nsSpacing := self bigSuit: (playerList at:3).
	(nsSpacing <= (self bigSuit: (playerList at:1)))
		ifTrue: [ nsSpacing:= self bigSuit: (playerList at:1)].
	
	wSpace:= self makeSpace: wSpacing.
	nsSpace := self makeSpace: nsSpacing.

	writeOut = Transcript
		ifTrue: [ w:= String new writeStream.
		]
		ifFalse:[ w:= writeOut new writeStream
			].
	"+++++++++++++++++++++++++++++++++++++++++++++++NORTH+++++++++++++++++++++++++++++++++++++++++++"
	w
		nextPutAll: wSpace;
		nextPutAll: 'North'; cr;
		nextPutAll: wSpace;
		nextPutAll: 'S '.
		(self makeValue: ((playerList at: 3) hand spades)) do:[ :i | w nextPutAll: (i asString); 			nextPutAll: ' '].
		w 
		cr;
		nextPutAll: wSpace;
		nextPutAll: 'H '.
		(self makeValue: ((playerList at: 3) hand hearts)) do:[ :i | w nextPutAll: (i asString); 			nextPutAll: ' '].
		w 
		cr;
		nextPutAll: wSpace;
		nextPutAll: 'D '.
		(self makeValue: ((playerList at: 3) hand diamonds)) do:[ :i | w nextPutAll: (i asString); 			nextPutAll:' '].
		w
		cr; 
		nextPutAll: wSpace;
		nextPutAll: 'C '.
		(self makeValue: ((playerList at: 3) hand clubs)) do:[ :i | w nextPutAll: (i asString); 			nextPutAll:' '].
		
 "+++++++++++++++++++++++++++++++++++++++++++++++WEST/EAST+++++++++++++++++++++++++++++++++++++++++++"
		
		w
		cr;
		nextPutAll: 'West';
		nextPutAll: nsSpace;nextPutAll:(self makeSpace:wSpacing-2);
		nextPutAll:'East';cr;
		
		nextPutAll: 'S '.
		(self makeValue: ((playerList at: 2) hand spades)) do:[ :i | w nextPutAll: (i asString). 			((((playerList at: 2) hand spades)at: ((playerList at: 2) hand spades)size) = i)ifFalse: [ w nextPutAll: ' '].].
		w nextPutAll: nsSpace; nextPutAll:(self makeSpace: wSpacing - ((playerList at: 2) hand 			spades)size-(self tenCheck: (playerList at:2)hand spades));
		nextPutAll: 'S '.
		(self makeValue: ((playerList at: 4) hand spades)) do:[ :i | w nextPutAll: (i asString); 			nextPutAll: ' '].
					
		w cr; nextPutAll: 'H '.
		(self makeValue: ((playerList at: 2) hand hearts)) do:[ :i | w nextPutAll: (i asString). 			((((playerList at: 2) hand hearts)at: ((playerList at: 2) hand hearts)size) = i)ifFalse: [ w 				nextPutAll: ' '].].
		w nextPutAll: nsSpace; nextPutAll:(self makeSpace: wSpacing - ((playerList at: 2) hand 			hearts)size-(self tenCheck: (playerList at:2)hand hearts));
		nextPutAll: 'H '.
		(self makeValue: ((playerList at: 4) hand hearts)) do:[ :i | w nextPutAll: (i asString); 			nextPutAll: ' '].
					
		w cr; nextPutAll: 'D '.
		(self makeValue: ((playerList at: 2) hand diamonds)) do:[ :i | w nextPutAll: (i asString). 			((((playerList at: 2) hand diamonds)at: ((playerList at: 2) hand diamonds)size) = i)ifFalse: [ w nextPutAll: ' '].].		
		w nextPutAll: nsSpace; nextPutAll:(self makeSpace: wSpacing - ((playerList at: 2) hand 			diamonds)size-(self tenCheck: (playerList at:2)hand diamonds));
		nextPutAll: 'D '.
		(self makeValue: ((playerList at: 4) hand diamonds)) do:[ :i | w nextPutAll: (i asString); 			nextPutAll: ' '].
					
		w cr; nextPutAll: 'C '.
		(self makeValue: ((playerList at: 2) hand clubs)) do:[ :i | w nextPutAll: (i asString). 			((((playerList at: 2) hand clubs)at: ((playerList at: 2) hand clubs)size) = i)ifFalse: [ w nextPutAll: ' '].].
					
		w nextPutAll: nsSpace; nextPutAll:(self makeSpace: wSpacing - ((playerList at: 2) hand 			clubs)size-(self tenCheck: (playerList at:2)hand clubs));
		nextPutAll: 'C '.
		(self makeValue: ((playerList at: 4) hand clubs)) do:[ :i | w nextPutAll: (i asString); 			nextPutAll: ' '].
					
"+++++++++++++++++++++++++++++++++++++++++++++++SOUTH+++++++++++++++++++++++++++++++++++++++++++"
	w
		cr;
		nextPutAll: wSpace;
		nextPutAll: 'South'; cr;
		nextPutAll: wSpace;
		nextPutAll: 'S '.
		(self makeValue: ((playerList at: 1) hand spades)) do:[ :i | w nextPutAll: (i asString); 			nextPutAll: ' '].
		w 
		cr;
		nextPutAll: wSpace;
		nextPutAll: 'H '.
		(self makeValue: ((playerList at: 1) hand hearts)) do:[ :i | w nextPutAll: (i asString); 			nextPutAll: ' '].
		w 
		cr;
		nextPutAll: wSpace;
		nextPutAll: 'D '.
		(self makeValue: ((playerList at: 1) hand diamonds)) do:[ :i | w nextPutAll: (i asString); 			nextPutAll:' '].
		w
		cr; 
		nextPutAll: wSpace;
		nextPutAll: 'C '.
		(self makeValue: ((playerList at: 1) hand clubs)) do:[ :i | w nextPutAll: (i asString); 			nextPutAll:' '].
		
 "+++++++++++++++++++++++++++++++++++++++++++++++WEST/EAST+++++++++++++++++++++++++++++++++++++++++++"
					
		Transcript show: (w contents).
					
					
					
					