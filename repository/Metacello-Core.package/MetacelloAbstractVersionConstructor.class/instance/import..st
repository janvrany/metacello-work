"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
import: aString
    "import names defined in baseline <aString> to be used when loading the version

		spec baseline: 'Sample' with: [ spec repository: 'github://dalehenrich/sample:master/repository' ].
		spec import: 'Sample' ]
	 "

    self root import: aString constructor: self
