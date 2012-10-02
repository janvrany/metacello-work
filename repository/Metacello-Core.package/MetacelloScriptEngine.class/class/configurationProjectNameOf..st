"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: utility
"
configurationProjectNameOf: configurationClassName
    ^ (configurationClassName indexOfSubCollection: 'ConfigurationOf') = 0
        ifTrue: [ configurationClassName ]
        ifFalse: [ configurationClassName copyFrom: 'ConfigurationOf' size + 1 to: configurationClassName size ]
