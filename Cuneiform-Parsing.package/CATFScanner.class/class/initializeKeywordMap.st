generated-initialization
initializeKeywordMap

	keywordMap := Dictionary new.
	#( #( 8 'a' 2 ) #( 8 'b' 2 ) #( 8 'c' 2 ) #( 8 'd' 2 ) #( 8 'e' 2 )
	   #( 8 'f' 2 ) #( 8 'g' 2 ) #( 8 'h' 2 ) #( 8 'h,' 2 ) #( 8 'i' 2 )
	   #( 8 'j' 2 ) #( 8 'k' 2 ) #( 8 'l' 2 ) #( 8 'm' 2 ) #( 8 'n' 2 )
	   #( 8 'o' 2 ) #( 8 'p' 2 ) #( 8 'q' 2 ) #( 8 'r' 2 ) #( 8 's' 2 )
	   #( 8 's''' 2 ) #( 8 's,' 2 ) #( 8 'sz' 2 ) #( 8 't' 2 )
	   #( 8 't,' 2 ) #( 8 'u' 2 ) #( 8 'v' 2 ) #( 8 'w' 2 ) #( 8 'x' 2 )
	   #( 8 'z' 2 ) ) do: [ :each | 
		(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
			at: (each at: 2)
			put: each last ].
	^ keywordMap