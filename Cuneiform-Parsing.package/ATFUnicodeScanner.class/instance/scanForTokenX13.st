generated
scanForTokenX13

	self recordMatch: #( 26 ).
	self step.
	currentCharacter = (Character value: 215) ifTrue: [ 
		^ self recordAndReportMatch: #( 3 ) ].
	^ self reportLastMatch