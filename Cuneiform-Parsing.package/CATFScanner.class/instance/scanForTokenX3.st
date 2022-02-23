generated
scanForTokenX3

	self recordMatch: #( 2 ).
	self step.
	(''',z' includes: currentCharacter) ifTrue: [ 
		^ self recordAndReportMatch: #( 2 ) ].
	^ self reportLastMatch