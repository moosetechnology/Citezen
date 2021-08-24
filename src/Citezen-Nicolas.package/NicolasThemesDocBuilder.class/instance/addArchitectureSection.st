sections
addArchitectureSection
	self
		addBibSection: CZSection
		withTitle: '<a name="archi"></a>Software Architecture'
		withHeader: self architectureHeader
		forEntries:(self themeQuery: 'architecture') 