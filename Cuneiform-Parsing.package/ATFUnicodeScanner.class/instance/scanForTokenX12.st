generated
scanForTokenX12

	self recordMatch: #( 26 ).
	self step.
	currentCharacter = (Character value: 215) ifTrue: [ 
		^ self recordAndReportMatch: #( 4 ) ].
	^ self reportLastMatch