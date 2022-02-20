generated
scanForToken

	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #( 1 ) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #( 2 ) ].
	currentCharacter == $3 ifTrue: [ ^ self scanForTokenX13 ].
	currentCharacter == $4 ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #( 5 ) ].
	currentCharacter == $@ ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $A ifTrue: [ ^ self scanForTokenX11 ].
	currentCharacter == $B ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $H ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $K ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $L ifTrue: [ ^ self scanForTokenX7 ].
	currentCharacter == $M ifTrue: [ ^ self scanForTokenX4 ].
	^ self scanForTokenX18