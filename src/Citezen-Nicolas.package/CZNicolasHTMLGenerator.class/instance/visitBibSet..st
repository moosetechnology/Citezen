visit
visitBibSet: aSet	
	
	self outputStream nextPutAll: '<ol class="bibliography">'.
	self line.

	aSet entries do: [ :each | 
		each acceptVisitor: self.
		].
	outputStream nextPutAll: '</ol>'.
