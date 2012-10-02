"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
checkAllowed
    self existingProjectRegistration locked
        ifTrue: [ 
            MetacelloLockedProjectError
                signal:
                    'Attempt to perform' , self operationString printString , ' a locked project: '
                        , self existingProjectRegistration printString ]
