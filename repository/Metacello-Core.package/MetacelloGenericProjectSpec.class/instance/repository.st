"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: querying
"
repository
    | specs |
    self deprecated: 'Use repositories or repositorySpecs'.
    (specs := self repositorySpecs) isEmpty
        ifTrue: [ ^ nil ].
    ^ specs first
