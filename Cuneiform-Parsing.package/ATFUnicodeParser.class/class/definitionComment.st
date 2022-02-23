generated
definitionComment
"%glr;

%unicode;


<subscriptDigit>
	: (\x2080 | \x2081 | \x2082 | \x2083 | \x2084 | \x2085 | \x2086 | \x2087 | \x2088 | \x2089)
	;
<validLowercaseLetter>
	: (š | ṣ | ṭ | ś | ḫ | ŋ | [a-z])
	;
<validUppercaseLetter>
	: (Š | Ṣ | Ṭ | Ś | Ḫ | Ŋ | [A-WYZ]) # Exclude capital X, which we use a a special control character in sign names
	;
<digit>
	: \d
	;
<modifier>
	: \@([cftsgnzkrhv] | <digit>+)
	;
<allograph>
	: \~[a-wyz]+
	;
<compundOperator>
	: [+&×.%@]
	;
<flag>
	: [?!*#]
	;
<spaces>
	: \ +
	;
<singleSpace>
	: \ {1,1}
	;
<graphemeSeparator>
	: \-
	;Start 
	: LineContent
	;
SimpleSignName
	: <validUppercaseLetter> 'letters'+ <subscriptDigit> 'number' *
	;
NumericSignName
	: ""N<"" <digit> 'digits' + "">""
	;
SignListSignName
	: (<validUppercaseLetter><validUppercaseLetter>""SL"") <digit>+
	| ""ABZ"" <digit>+
	| ""BAU"" <digit>+
	| ""HZL"" <digit>+
	| ""KWU"" <digit>+
	| ""LAK"" <digit>+
	| ""MEA"" <digit>+
	| ""MZL"" <digit>+
	| ""REC"" <digit>+
	| ""RSP"" <digit>+
	| ""ZATU"" <digit>+
	;
SignName
	: NumericSignName <allograph>? <modifier>?
	| SignListSignName <allograph>? <modifier>?
	| SimpleSignName <allograph>? <modifier>?
	| QualifiedSignName <allograph>? <modifier>?
	| GroupedSignName
	| CompundSignName
	;
SimpleSignValue
	: <validLowercaseLetter> 'letters'+ <subscriptDigit> 'number'*
	;
QualifiedSignName
	: <validUppercaseLetter> 'letters'+ ""X"" ""("" SignName 'signName' "")""
	;
QualifiedSignValue
	: <validLowercaseLetter> 'letters'+ ""ₓ"" ""("" SignName 'signName' "")""
	;
SignValue
	: SimpleSignValue <allograph>? <modifier>?
	| QualifiedSignValue <allograph>? <modifier>?
	;
GraphemeRepetition
	: ""n+"" <digit> ""("" (SignName | SignValue) "")""
	| <digit>+ ""("" (SignName | SignValue) "")""
	| ""n("" (SignName | SignValue) "")""
	;
CompundSignName
	: ""|"" ""3×"" SignName ""|""
	| ""|"" ""4×"" SignName ""|""
	| ""|"" SignName <compundOperator> SignName ""|""
	| ""|"" GroupedSignName ""|""
	;
GroupedSignName
	: ""("" SignName <compundOperator> SignName "")"" <allograph>? <modifier>?
	;
Grapheme
	: GraphemeRepetition 'repeatedGrapheme' <flag>'flags'*
	| SignName 'signName' <flag> 'flags'*
	| SignValue 'signValue' <flag> 'flags'*
	;
Word
	: Grapheme <graphemeSeparator> Word
	| Grapheme
	;
LineContent
	: Word <singleSpace>+ LineContent
	| Word
	;"