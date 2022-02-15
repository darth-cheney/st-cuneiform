accessing
atfLowercase
	^ PP2PredicateObjectNode new
		predicate: (PP2CharSetPredicate on: [ :char | ((char isLetter or: [ self class validChars includes: char ]) and: [ char isLowercase ]) and: [ (char = $X) not]]);
		predicateMessage: 'Expected a valid uppercase letter or ATF unicode character!';
		negated: (PP2CharSetPredicate on: [ :char | (((char isLetter or: [ self class validChars includes: char ])) and: [ char isLowercase ]) not ]);
		negatedMessage: 'Uppercase letter or ATF unicode character NOT expected';
		yourself