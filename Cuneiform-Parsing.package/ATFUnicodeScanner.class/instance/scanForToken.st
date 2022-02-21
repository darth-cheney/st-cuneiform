generated
scanForToken

	self step.
	currentCharacter == Character space ifTrue: [ 
		^ self recordAndReportMatch: #( 31 ) ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #( 1 ) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #( 2 ) ].
	currentCharacter == $- ifTrue: [ 
		^ self recordAndReportMatch: #( 32 ) ].
	currentCharacter == $3 ifTrue: [ ^ self scanForTokenX13 ].
	^ self scanForTokenX19