"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: testing
"
canDowngradeTo: aProjectRegistration
    "true if there are no load conflicts
        OR
       if the load conflicts involved two cofigurations ONLY and a downgrade is allowed"

    (self hasLoadConflicts: aProjectRegistration)
        ifFalse: [ ^ true ].
    configurationProjectSpec
        ifNotNil: [ 
            aProjectRegistration configurationProjectSpec
                ifNotNil: [ 
                    configurationProjectSpec ensureProjectLoaded.
                    ^ configurationProjectSpec canDowngradeTo: aProjectRegistration configurationProjectSpec ] ].
    ^ false
