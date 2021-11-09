accessing
signName
	^ ((repetitionSignName / numericSignName / qualifiedSignName  / listSignName / baseSignName ), ATFSignModifierNode new asPParser star) ==> [ :nodes |
		"First nodes will be the CuneiformSign instance"
		nodes second ifNotEmpty: [ 
			nodes second do: [ :modifier | nodes first addModifier: modifier ] ].
		nodes first]