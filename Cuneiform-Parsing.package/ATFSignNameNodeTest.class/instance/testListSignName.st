accessing
testListSignName
	| examples |
	examples := #('LAK37' 'ZATU777').
	examples do: [ :ex |
		self
			parse: ex
			rule: #listSignName ]