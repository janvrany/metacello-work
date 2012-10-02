"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: pragma extraction
"
extractBaselinePragmaFor: aClass
    | pragmas |
    pragmas := Pragma allNamed: #'baseline' in: aClass.
    pragmas isEmpty
        ifTrue: [ ^ self error: 'No #baseline pragma found' ].
    ^ pragmas first
