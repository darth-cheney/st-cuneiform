accessing
signValue
	^ (baseValue asPParser, subscript optional) ==> [ :nodes |  
		CuneiformValue new
			value: nodes first;
			number: (self subscriptToInteger: nodes second) ]