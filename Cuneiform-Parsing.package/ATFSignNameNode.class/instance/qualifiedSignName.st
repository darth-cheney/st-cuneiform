accessing
qualifiedSignName
	^ (atfUppercase asPParser plus flatten, $X asPParser , $( asPParser , signName asPParser , $) asPParser) ==> [ :nodes |
		CuneiformSign new
			signName: nodes first;
			qualifier: nodes fourth ]