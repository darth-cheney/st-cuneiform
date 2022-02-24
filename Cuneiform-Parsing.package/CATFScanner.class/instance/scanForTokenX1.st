generated
scanForTokenX1

	self recordMatch: #( 8 ).
	self step.
	(currentCharacter between: $0 and: $9) ifTrue: [ 
		self recordMatch: #( 8 ).
		self step.
		(currentCharacter between: $0 and: $9) ifTrue: [ 
			self recordMatch: #( 8 ).
			self step.
			(currentCharacter between: $0 and: $9) ifTrue: [ 
				self recordMatch: #( 8 ).
				self step.
				(currentCharacter between: $0 and: $9) ifTrue: [ 
					self recordMatch: #( 8 ).
					self step.
					(currentCharacter between: $0 and: $9) ifTrue: [ 
						self recordMatch: #( 8 ).
						self step.
						(currentCharacter between: $0 and: $9) ifTrue: [ 
							self recordMatch: #( 6 8 ).
							self step.
							(currentCharacter <= Character tab or: [ 
								 (currentCharacter
									  between: Character pageUp
									  and: Character newPage) or: [ 
									 currentCharacter >= (Character value: 14) ] ]) ifTrue: [ 
								[ 
								self recordMatch: #( 8 ).
								self step.
								currentCharacter <= Character tab or: [ 
									(currentCharacter
										 between: Character pageUp
										 and: Character newPage) or: [ 
										currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
							^ self reportLastMatch ] ] ] ] ] ].
	(currentCharacter <= Character tab or: [ 
		 (currentCharacter between: Character pageUp and: Character newPage) 
			 or: [ 
				 (currentCharacter between: (Character value: 14) and: $/) or: [ 
					 currentCharacter >= $: ] ] ]) ifTrue: [ 
		[ 
		self recordMatch: #( 8 ).
		self step.
		currentCharacter <= Character tab or: [ 
			(currentCharacter between: Character pageUp and: Character newPage) 
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch