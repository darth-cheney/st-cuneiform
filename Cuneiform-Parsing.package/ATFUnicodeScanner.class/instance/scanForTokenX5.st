generated
scanForTokenX5

	self recordMatch: #( 24 ).
	self step.
	currentCharacter == $( ifTrue: [ 
		^ self recordAndReportMatch: #( 19 ) ].
	currentCharacter == $+ ifTrue: [ 
		^ self recordAndReportMatch: #( 20 ) ].
	^ self reportLastMatch