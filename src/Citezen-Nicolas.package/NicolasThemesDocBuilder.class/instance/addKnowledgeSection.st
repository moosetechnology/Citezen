sections
addKnowledgeSection
	self
		addBibSection: CZSection
		withTitle: '<a name="knwldge"></a>Knowledge management'
		withHeader: self knowledgeHeader
		forEntries:(self themeQuery: 'knowledge')