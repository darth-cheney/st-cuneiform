accessing
testNumericSignName
	| examples |
	examples := #('N01' 'N34').
	examples do: [ :ex |
		self
			parse: ex
			rule: #numericSignName ]