"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: utility
"
configurationNameFrom: baseName
    "Return the fully-qualified configuration class name."

    ^ (baseName indexOfSubCollection: 'ConfigurationOf') > 0
        ifTrue: [ baseName ]
        ifFalse: [ 'ConfigurationOf' , baseName ]
