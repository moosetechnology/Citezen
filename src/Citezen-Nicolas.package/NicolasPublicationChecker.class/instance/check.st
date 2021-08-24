running
check
	self fileNamed: 'rmod.bib'.
	(workingBibSet select: self authorQuery)
	do: [ :entry |
		self ruleHasTag: #tagnicolasa on: entry.
		self ruleHasTag: #annote on: entry.
	]
	