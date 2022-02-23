generated
scanForTokenX5

	('HT' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX2 ].
	('ht' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1 ].
	((currentCharacter between: $A and: $G) or: [ 
		 (currentCharacter between: $I and: $R) or: [ 
			 (currentCharacter between: $U and: $W) or: [ 
				 currentCharacter between: $Y and: $Z ] ] ]) ifTrue: [ 
		^ self recordAndReportMatch: #( 1 ) ].
	((currentCharacter between: $a and: $g) or: [ 
		 (currentCharacter between: $i and: $r) or: [ 
			 (currentCharacter between: $u and: $x) or: [ 
				 currentCharacter == $z ] ] ]) ifTrue: [ 
		^ self recordAndReportMatch: #( 2 ) ].
	^ self reportLastMatch