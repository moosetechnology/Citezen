visit
visitSectionTitle: aCZString
	outputStream
		nextPutAll: '<h3>';
		nextPutAll:
			(self treatString: aCZString expanded);
		nextPutAll: '</h3>'.
	self
		line;
		line