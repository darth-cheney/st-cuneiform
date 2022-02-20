generated
scanForTokenX15

	self recordMatch: #( 25 ).
	self step.
	currentCharacter == $< ifTrue: [ 
		^ self recordAndReportMatch: #( 13 ) ].
	^ self reportLastMatch