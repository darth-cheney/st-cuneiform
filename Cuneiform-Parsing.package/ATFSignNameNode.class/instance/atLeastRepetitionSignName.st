accessing
atLeastRepetitionSignName
	^ ('N+' asPParser, #digit asPParser plus flatten, $( asPParser, signName, $) asPParser) token ==> [ :token | CuneiformSignRepeating new signName: token collection ]