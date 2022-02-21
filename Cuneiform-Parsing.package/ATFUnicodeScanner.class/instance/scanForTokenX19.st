generated
scanForTokenX19

	currentCharacter == $4 ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #( 5 ) ].
	currentCharacter == $@ ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $A ifTrue: [ ^ self scanForTokenX11 ].
	currentCharacter == $B ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $H ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $K ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $L ifTrue: [ ^ self scanForTokenX7 ].
	currentCharacter == $M ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $N ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $R ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == $S ifTrue: [ ^ self scanForTokenX14 ].
	^ self scanForTokenX18