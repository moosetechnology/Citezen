building
buildDocumentSections
	self
		addSectionFromQuery: self journalQuery
			withTitle: localization internationalReviewedJournal;
		"addBibSection: (self topConferenceQuery) withTitle:  localization topConferences;"
			addSectionFromQuery: self nationalJournalQuery
			withTitle: 'Refereed Articles in National Journals';
		"adding topConf back to international conf"
			addSectionFromQuery: (self internationalConferenceQuery OR: self topConferenceQuery)
			withTitle: localization internationalConference;
		addSectionFromQuery: self nationalConferenceQuery
			withTitle: localization nationalReviewedConference;
		addSectionFromQuery: self invitedQuery
			withTitle: localization invitedPapers;
		addSectionFromQuery: self bookChapterQuery
			withTitle: localization bookChapters;
		addSectionFromQuery: self bookQuery withTitle: localization books;
		addSectionFromQuery: self editorQuery withTitle: localization editor;
		addSectionFromQuery: self internationalWorkshopQuery
			withTitle: localization internationalReviewedWorkshops;
		addSectionFromQuery: self PhDAndHabilitationQuery
			withTitle: localization phdAndHdr;
		addSectionFromQuery: self technicalReportQuery
			withTitle: localization technicalReport;
		addSectionFromQuery: self toolDemoQuery withTitle: localization toolDemo;
		addSectionFromQuery: self vulgarisationQuery
			withTitle: localization vulgarisation