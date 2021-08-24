adding
addBibSection: aSection withTitle: aString withHeader: sectHead forEntries: aQuery
	"adding a section just add a section and a list of entries following it."
	| entries |
	entries := (workingBibSet select: aQuery).
	(noEmptySection & entries size isZero)
		ifTrue: [^ self].
	entries sortByDateReverse.	
	self
		addSection:
			(CZSection new
				title: (CZString new setValue: aString);
				text: (CZString new setValue: sectHead);
				items: (CZSet new
							addAll: entries;
							yourself)
				yourself).
