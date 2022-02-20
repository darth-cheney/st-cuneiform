generated
scanForTokenX6

	self recordMatch: #( 25 ).
	self step.
	currentCharacter == $A ifTrue: [ 
		(self scanForString: 'TU') ifTrue: [ 
			^ self recordAndReportMatch: #( 18 ) ] ].
	^ self reportLastMatch