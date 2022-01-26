queries
journalQuery
	^ super journalQuery
	AND: (CZFieldQuery named: #annote checks: [ :value | '*internationaljournal*' match: value ])