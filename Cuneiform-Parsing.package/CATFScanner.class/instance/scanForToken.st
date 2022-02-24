generated
scanForToken

	self recordMatch: #( 8 ).
	self step.
	currentCharacter == Character lf ifTrue: [ 
		^ self recordAndReportMatch: #( 7 ) ].
	currentCharacter == Character cr ifTrue: [ 
		self recordMatch: #( 7 ).
		self step.
		currentCharacter == Character lf ifTrue: [ 
			^ self recordAndReportMatch: #( 7 ) ].
		^ self reportLastMatch ].
	currentCharacter == Character space ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $& ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $P ifTrue: [ ^ self scanForTokenX1 ].
	(currentCharacter between: $0 and: $9) ifTrue: [ 
		^ self scanForTokenX2 ].
	true ifTrue: [ self scanForTokenX6 ].
	^ self reportLastMatch