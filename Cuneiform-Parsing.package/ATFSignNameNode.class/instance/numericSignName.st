accessing
numericSignName
	"Of the format N<number>"
	^ ($N asPParser , #digit asPParser plus flatten) ==> [ :nodes |
		CuneiformSignlistSign new signName: 'N', nodes second ]