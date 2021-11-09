accessing
unknownRepetitionSignName
	^ ('N(' asPParser, signName, $) asPParser) token ==> [ :token | CuneiformSignRepeating new signName: token collection ]