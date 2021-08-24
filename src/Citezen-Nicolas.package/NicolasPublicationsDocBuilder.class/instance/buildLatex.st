building
buildLatex
	"self new buildLatex"
	
	| builder |
	builder := CZLaTeXDocBuilder new
		fileNamed: 'rmod.bib' ;
		authorMatchingString: authorMatchingString ;
		french ; 
		fieldOrder: #(#author 
			  #title 
			  #journal 
			  #booktitle 
			  #volume 
			  #pages 
			  #publisher  
			  #year 
			  #school
			  #misc) ;
		"headerString: self latexHeaderString; "
		setFilteringOn.
	builder generate.	