accessing
subscriptToInteger: aString
	"Convert a decimal string representation of a subscript
	number -- whose digits begin at 16r2080 and end at 16r2089 -- to
	an actual integer representation"
	aString ifNil: [ ^ nil ].
	^ Number readFrom: (aString collect: [ :char | (char asInteger - 8272) asCharacter ])