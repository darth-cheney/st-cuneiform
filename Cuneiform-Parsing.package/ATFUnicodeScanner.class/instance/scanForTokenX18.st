generated
scanForTokenX18

	currentCharacter == $N ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $R ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $S ifTrue: [ ^ self scanForTokenX14 ].
	currentCharacter == $X ifTrue: [ 
		^ self recordAndReportMatch: #( 17 ) ].
	currentCharacter == $Z ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $n ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $| ifTrue: [ 
		^ self recordAndReportMatch: #( 21 ) ].
	currentCharacter == $~ ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter = (Character value: 8339) ifTrue: [ 
		^ self recordAndReportMatch: #( 22 ) ].
	(currentCharacter
		 between: (Character value: 8320)
		 and: (Character value: 8329)) ifTrue: [ 
		^ self recordAndReportMatch: #( 23 ) ].
	^ self scanForTokenX17