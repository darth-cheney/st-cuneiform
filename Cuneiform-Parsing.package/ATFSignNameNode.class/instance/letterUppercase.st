accessing
letterUppercase
	^ PP2PredicateObjectNode new
		predicate: (PP2CharSetPredicate on: [ :char | char isLetter and: [ char isUppercase]]);
		predicateMessage: 'Expected a valid uppercase letter!';
		negated: (PP2CharSetPredicate on: [ :char | (char isLetter not or: [ char isUppercase not ])]);
		negatedMessage: 'Uppercase letter NOT expected';
		yourself