accessing
atfUppercase
	^ PP2PredicateObjectNode new
		predicate: (PP2CharSetPredicate on: [ :char | ((char isLetter or: [ self class validChars includes: char ]) and: [ char isUppercase ]) and: [ (char = $X) not]]);
		predicateMessage: 'Expected a valid uppercase letter or ATF unicode character!';
		negated: (PP2CharSetPredicate on: [ :char | (((char isLetter or: [ self class validChars includes: char ]) or: [ char = $X ]) and: [ char isUppercase ]) not ]);
		negatedMessage: 'Uppercase letter or ATF unicode character NOT expected';
		yourself