accessing
baseline: spec
	"Primary baseline for the Cuneiform and ATF parsing packages"
	spec for: #common do: [
		spec baseline: 'PetitParser2' with: [
			spec repository: 'github://kursjan/petitparser2'
		].
		
		spec
			package: 'Cuneiform';
			package: 'Cuneiform-Parsing' with: [ spec requires: #('PetitParser2')]
	]