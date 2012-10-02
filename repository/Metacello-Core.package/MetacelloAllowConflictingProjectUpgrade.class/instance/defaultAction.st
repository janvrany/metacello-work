"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: exception handling
"
defaultAction
    ^ MetacelloConflictingProjectError
        signal:
            'Load Conflict between existing ' , self existingProjectRegistration printString , ' and '
                , self newProjectRegistration printString
