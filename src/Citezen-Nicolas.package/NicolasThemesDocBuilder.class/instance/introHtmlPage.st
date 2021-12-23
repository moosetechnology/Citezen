building
introHtmlPage
	| lastSect |
	lastSect := themeSections last.
	^ 
String streamContents: [ :stream |
	stream nextPutAll: '
<p>You will find here my publications organized by topic (sometimes overlapping).
In my <a href="publications.html">publications page</a>, they are presented by type and in chronological order.</p>

<p>My work covers various topics of software maintenance:
<ul>
'.
	themeSections do: [ :sect |
		stream
			nextPutAll: '<li><a href="#' ;
			nextPutAll: sect htmlTag ;
			nextPutAll: '">' ;
			nextPutAll: sect title ;
			nextPutAll: '</a> ' ;
			nextPutAll: sect summary ;
			nextPut: (sect = lastSect ifTrue: [ $. ] ifFalse: [$;]) ;
			nextPutAll: '</li>'.
	].
	stream nextPutAll: 
'</ul>
</p>'
	]