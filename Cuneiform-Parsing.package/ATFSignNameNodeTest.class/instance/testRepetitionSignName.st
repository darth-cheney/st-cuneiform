accessing
testRepetitionSignName
	| examples |
	examples := #('3(ŠA₃)').
	examples do: [ :ex |
		self
			parse: ex
			rule: #repetitionSignName ]