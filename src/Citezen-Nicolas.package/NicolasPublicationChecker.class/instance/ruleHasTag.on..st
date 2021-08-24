running
ruleHasTag:	aCZTag on: aCZEntry
	(self entry: aCZEntry hasTag: aCZTag)
		ifFalse: [
			Transcript
				show: 'missing ' ;
				show: aCZTag ;
				show: ' for ' ;
				show: (aCZEntry asString) ;
				cr
		]