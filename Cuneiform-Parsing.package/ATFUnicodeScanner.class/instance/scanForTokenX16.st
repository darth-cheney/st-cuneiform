generated
scanForTokenX16

	(currentCharacter == Character space or: [ 
		 (currentCharacter between: $C and: $G) or: [ 
			 (currentCharacter between: $I and: $J) or: [ 
				 (currentCharacter between: $O and: $Q) or: [ 
					 (currentCharacter between: $T and: $W) or: [ 
						 currentCharacter == $Y or: [ 
							 currentCharacter = (Character value: 330) or: [ 
								 currentCharacter = (Character value: 346) or: [ 
									 currentCharacter = (Character value: 352) or: [ 
										 currentCharacter = (Character value: 7722) or: [ 
											 currentCharacter = (Character value: 7778) or: [ 
												 currentCharacter = (Character value: 7788) ] ] ] ] ] ] ] ] ] ] ]) 
		ifTrue: [ ^ self recordAndReportMatch: #( 25 ) ].
	^ self reportLastMatch