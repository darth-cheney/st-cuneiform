accessing
listSignName
	^ (#letter asPParser plus flatten, #digit asPParser plus flatten) ==> [ :nodes |
		CuneiformSignlistSign new signName: nodes first, nodes second ]