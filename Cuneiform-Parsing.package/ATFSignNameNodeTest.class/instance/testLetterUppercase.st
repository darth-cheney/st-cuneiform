accessing
testLetterUppercase
	| examples |
	examples := #('A' 'B' 'Z' 'X' 'Y').
	examples do: [ :ex |
		self
			parse: ex
			rule: #letterUppercase]