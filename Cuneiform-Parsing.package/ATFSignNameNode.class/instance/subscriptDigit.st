accessing
subscriptDigit
	^ PP2PredicateObjectNode new
		predicate: (PP2CharSetPredicate on: [ :char | char asInteger between: 16r2080 and: 16r2089 ]);
		predicateMessage: 'Unicode character between 0x2080 and 0x2089 expected';
		negated: (PP2CharSetPredicate on: [ :char | (char asInteger between: 16r2080 and: 16r2089) not ]);
		negatedMessage: 'Unicode character between 0x2080 and 0x2089 NOT expected';
		yourself