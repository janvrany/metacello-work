"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: utility
"
baseNameOf: className
    ^ (className indexOfSubCollection: 'BaselineOf') = 0
        ifTrue: [ 
            (className indexOfSubCollection: 'ConfigurationOf') = 0
                ifTrue: [ className ]
                ifFalse: [ className copyFrom: 'ConfigurationOf' size + 1 to: className size ] ]
        ifFalse: [ className copyFrom: 'BaselineOf' size + 1 to: className size ]
