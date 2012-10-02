"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: method generation
"
compileMethod

	(project configuration class
		compile: self methodSource
		classified: self category) == nil
		ifTrue: [ self error: 'Error compiling the method' ]
