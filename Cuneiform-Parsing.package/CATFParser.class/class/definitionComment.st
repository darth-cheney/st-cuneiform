generated
definitionComment
"%unicode;



<uppercasePhoneme>
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
	;
<openParen>
	: \(
	;
<closeParen>
	: \)
	;
<openBrace>
	: \{
	;
<closeBrace>
	: \}
	;
<openBracket>
	: \[
	;
<closeBracket>
	: \]
	;
<openAngledBrace>
	: \<
	;
<closeAngledBrace>
	: \>
	;
<openLinguisticGloss>
	: <openBrace> <openBrace>
	;
<closeLinguisticGloss>
	: <closeBrace> <closeBrace>
	;
<openDocumentGloss>
	: <openBrace> <openParen>
	;
<closeDocumentGloss>
	: <closeParen> <closeBrace>
	;
<openPresenceExcised>
	: <openAngledBrace> <openAngledBrace>
	;
<closePresenceExcised>
	: <closeAngledBrace> <closeAngledBrace>
	;
<openImpliedOrSurrogate>
	: <openAngledBrace> <openParen>
	;
<closeImpliedOrSurrogate>
	: <closeParen> <closeAngledBrace>
	;
<pipe>
	: \|
	;
<space>
	: \ 
	;
<lineStart>
	: \d+\.<space>+
	;
<amp>
	: \&
	;
<at>
	: \@
	;
<dollar>
	: \$
	;
<pNumber>
	: P[0-9]{6,6}
	;
<nl>
	: \r|\n|\r\n
	;
<restOfLine>
	: ([^\n\r])*
	;Start 
	: LinesTest
	;
SignValue
	: SimpleSignValue 'atomicSign' <digit> 'number'*
	;
SimpleSignValue
	: <lowercasePhoneme>+
	;
AmpLine
	: <amp><pNumber><space>""=""<space><restOfLine>
	;
LinesTest
	: Line
	| LinesTest Line
	;
Line
	: <restOfLine>
	| <nl>
	;"