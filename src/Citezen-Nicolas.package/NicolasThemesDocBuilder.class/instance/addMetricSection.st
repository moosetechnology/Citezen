sections
addMetricSection
	self
		addBibSection: CZSection
		withTitle: '<a name="quality"></a>Software Quality / Metrics'
		withHeader: self metricsHeader
		forEntries:(self themeQuery: 'metric') 
