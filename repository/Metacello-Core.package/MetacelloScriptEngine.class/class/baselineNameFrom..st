"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: utility
"
baselineNameFrom: baseName
    "Return the fully-qualified configuration class name."

    ^ (baseName indexOfSubCollection: 'BaselineOf') > 0
        ifTrue: [ baseName ]
        ifFalse: [ 'BaselineOf' , baseName ]
