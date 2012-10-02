"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: project lookup
"
getConfigurationUnconditionalLoad: unconditionalLoad
    | spec |
    spec := self projectSpec.
    Smalltalk
        at: spec className asSymbol
        ifPresent: [ :cl | 
            unconditionalLoad
                ifFalse: [ ^ cl ] ].
    (spec := self lookupProjectSpecFor: spec) projectPackage load.
    ^ Smalltalk at: spec className asSymbol
