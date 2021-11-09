accessing
testBaseSignName
	| examples |
	examples := #('A' 'BA' 'ŠA₃' 'GILIM' '$ŠA₃' '~ŠA₃').
	examples do: [ :ex |
		self
			parse: ex
			rule: #baseSignName ]