generated
scanForTokenX2

	self recordMatch: #( 1 ).
	self step.
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #( 1 ) ].
	^ self reportLastMatch