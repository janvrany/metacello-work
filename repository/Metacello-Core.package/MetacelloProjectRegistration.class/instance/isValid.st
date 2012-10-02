"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: testing
"
isValid
    " has a name and one or the other of the projectSpecs is non-nil"

    projectName ifNil: [ ^ false ].
    ^ configurationProjectSpec notNil or: [ baselineProjectSpec notNil ]
