accessing
testSignNameWithModifier
	| examples |
	examples := #('AŠ@c').
	examples do: [ :ex |
		self
			parse: ex
			rule: #signName ]