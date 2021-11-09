accessing
testQualifiedSignName
	| examples |
	examples := #('ZAX(LAK384)').
	examples do: [ :ex |
		self
			parse: ex
			rule: #qualifiedSignName ].