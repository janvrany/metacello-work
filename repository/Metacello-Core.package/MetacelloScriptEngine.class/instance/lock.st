actions api
lock
    | spec |
    MetacelloProjectRegistration
        copyRegistryRestoreOnErrorWhile: [ 
            self validateProjectSpecForScript.
            spec := self projectSpec.
            MetacelloProjectRegistration
                registrationForProjectSpec: spec
                ifAbsent: [ :new | 
                    new
                        locked: true;
                        registerProject ]
                ifPresent: [ :existing :new | 
                    existing
                        copyOnWrite: [ :existingCopy | 
                            existingCopy locked: true.
                            spec
                                copyForRegistration: existingCopy
                                onWrite: [ :specCopy | 
                                    specCopy
                                        ifNil: [ existingCopy merge: new ]
                                        ifNotNil: [ 
                                            specCopy mergeScriptRepository: spec.
                                            spec := specCopy ] ] ] ].
            self root: spec ]