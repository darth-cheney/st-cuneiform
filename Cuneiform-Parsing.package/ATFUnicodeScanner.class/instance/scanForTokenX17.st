generated
scanForTokenX17

	('!#*?' includes: currentCharacter) ifTrue: [ 
		^ self recordAndReportMatch: #( 30 ) ].
	((currentCharacter between: $% and: $&) or: [ 
		 '+.×' includes: currentCharacter ]) ifTrue: [ 
		^ self recordAndReportMatch: #( 29 ) ].
	((currentCharacter between: $a and: $m) or: [ 
		 (currentCharacter between: $o and: $z) or: [ 
			 currentCharacter = (Character value: 331) or: [ 
				 currentCharacter = (Character value: 347) or: [ 
					 currentCharacter = (Character value: 353) or: [ 
						 currentCharacter = (Character value: 7723) or: [ 
							 currentCharacter = (Character value: 7779) or: [ 
								 currentCharacter = (Character value: 7789) ] ] ] ] ] ] ]) 
		ifTrue: [ ^ self recordAndReportMatch: #( 24 ) ].
	^ self scanForTokenX16