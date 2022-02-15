accessing
printOn: aStream
	aStream nextPutAll: value.
	number ifNotNil: [ 
		aStream nextPutAll: (number asString collect: [ :char | (char asInteger + 8272) asCharacter]) ]