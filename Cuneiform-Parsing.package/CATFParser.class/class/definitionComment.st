generated
definitionComment
"<uppercasePhoneme>
	: SZ
	| S,
	| T,
	| S'
	| H,
	| [A-WYZ]
	;
<lowercasePhoneme>
	: sz
	| s,
	| t,
	| s'
	| h,
	| [a-wxz]
	;
<digit>
	: \d
	;Start 
	: <uppercasePhoneme>+
	;
SignValue
	: SimpleSignValue 'atomicSign' <digit> 'number'*
	;
SimpleSignValue
	: <lowercasePhoneme>+
	;"