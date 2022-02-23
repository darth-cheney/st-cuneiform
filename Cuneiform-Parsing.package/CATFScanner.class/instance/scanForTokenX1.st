generated
scanForTokenX1

	self recordMatch: #( 2 ).
	self step.
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #( 2 ) ].
	^ self reportLastMatch