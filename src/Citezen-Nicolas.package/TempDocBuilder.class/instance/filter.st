building
filter
	"my publications from 2015"
	super filter.
	workingBibSet := workingBibSet select: [ :elt | elt year value > '2014' ]
