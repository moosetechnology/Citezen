queries
themeQuery: aString

	^ (CZFieldQuery 
			named: #tagnicolasa
			checks: [ :value | '*' , aString , '*' match: value ])