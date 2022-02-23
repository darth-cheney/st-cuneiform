generated
scanForToken

	self step.
	currentCharacter == $S ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $s ifTrue: [ ^ self scanForTokenX3 ].
	(currentCharacter between: $0 and: $9) ifTrue: [ 
		^ self recordAndReportMatch: #( 3 ) ].
	^ self scanForTokenX5