generated
scanForTokenX18

	currentCharacter == $X ifTrue: [ 
		^ self recordAndReportMatch: #( 17 ) ].
	currentCharacter == $Z ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $n ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $| ifTrue: [ 
		^ self recordAndReportMatch: #( 21 ) ].
	currentCharacter == $~ ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter = (Character value: 8339) ifTrue: [ 
		^ self recordAndReportMatch: #( 22 ) ].
	(currentCharacter
		 between: (Character value: 8320)
		 and: (Character value: 8329)) ifTrue: [ 
		^ self recordAndReportMatch: #( 23 ) ].
	((currentCharacter between: $0 and: $2) or: [ 
		 currentCharacter between: $5 and: $9 ]) ifTrue: [ 
		^ self recordAndReportMatch: #( 26 ) ].
	^ self scanForTokenX17