"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: querying
"
repository
    self deprecated: 'Use repositories or repositorySpecs'.
    self repositorySpecs isEmpty
        ifTrue: [ ^ nil ].
    ^ self repositorySpecs first
