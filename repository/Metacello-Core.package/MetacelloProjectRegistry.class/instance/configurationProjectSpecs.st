"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
configurationProjectSpecs
    "MetacelloProjectRegistration configurationProjectSpecs"

    | projectSpecs |
    projectSpecs := OrderedCollection new.
    self configurationRegistry
        keysAndValuesDo: [ :className :registration | projectSpecs add: (self projectSpecForClassNamed: className ifAbsent: [ self error: 'not expected' ]) ].
    ^ projectSpecs asArray
