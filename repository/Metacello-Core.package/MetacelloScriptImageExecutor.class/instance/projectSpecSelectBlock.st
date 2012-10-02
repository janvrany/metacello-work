"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: execution callback
"
projectSpecSelectBlock
    ^ [ :projectSpec | 
    projectSpec
        ifNil: [ false ]
        ifNotNil: [ 
            MetacelloProjectRegistration
                registrationForProjectSpec: projectSpec
                ifAbsent: [ false ]
                ifPresent: [ :existingRegistration :newRegistration | existingRegistration loadedInImage ] ] ]
