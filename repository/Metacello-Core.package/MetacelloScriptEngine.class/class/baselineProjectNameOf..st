"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: utility
"
baselineProjectNameOf: baselineClassName
    ^ (baselineClassName indexOfSubCollection: 'BaselineOf') = 0
        ifTrue: [ baselineClassName ]
        ifFalse: [ baselineClassName copyFrom: 'BaselineOf' size + 1 to: baselineClassName size ]
