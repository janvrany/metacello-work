"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: actions api
"
unlock
    | spec |
    MetacelloProjectRegistration
        copyRegistryRestoreOnErrorWhile: [ 
            self validateProjectSpecForScript.
            spec := self projectSpec.
            MetacelloProjectRegistration
                registrationForProjectSpec: spec
                ifAbsent: [ :ignored |  ]
                ifPresent: [ :existing :new | existing copyOnWrite: [ :existingCopy | existingCopy locked: false ] ].
            self root: spec ]
