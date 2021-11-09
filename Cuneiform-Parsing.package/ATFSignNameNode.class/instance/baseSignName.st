accessing
baseSignName
	"A sign name is an uppercase word with optional subscript digit"
	^ (($~ asPParser / $$ asPParser) optional, atomicSignName asPParser, subscript asPParser optional) ==> [ :nodes |
		CuneiformSign new signName: nodes second, (nodes third ifNil: [''] ifNotNil: [ nodes third ]) ]