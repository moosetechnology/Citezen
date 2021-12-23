sections
addThemeSection: aNicolasSection
	| query |
	query := self themeQuery: aNicolasSection queryWords first.
	aNicolasSection queryWords allButFirstDo: [ :word |
		query := CZOrQuery new
			leftOr: query ;
			rightOr: (self themeQuery: word) ].
	
	self
		addBibSection: CZSection
		withTitle: ('<a name="' , aNicolasSection htmlTag , '"></a>' , aNicolasSection title)
		withHeader: '<p>' , aNicolasSection header , '</p>'
		forEntries: query 