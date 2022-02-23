generated
scanForTokenX4

	self recordMatch: #( 1 ).
	self step.
	(''',Z' includes: currentCharacter) ifTrue: [ 
		^ self recordAndReportMatch: #( 1 ) ].
	^ self reportLastMatch