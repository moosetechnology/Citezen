building
filter
	"Adding a filter to remove entries that are explicitly ignored with TagNicolasA"
	super filter.
	workingBibSet := workingBibSet select: (CZFieldQuery 
		named: #tagnicolasa 
		checks: [ :value |  ('ignore' match: value) not ])
