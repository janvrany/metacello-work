"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
baselineProjectSpecs
    "MetacelloProjectRegistration baselineProjectSpecs"

    | projectSpecs |
    projectSpecs := OrderedCollection new.
    self baselineRegistry
        keysAndValuesDo: [ :className :registration | projectSpecs add: (self projectSpecForClassNamed: className ifAbsent: [ self error: 'not expected' ]) ].
    ^ projectSpecs asArray
