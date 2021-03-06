testing
hasLoadConflicts: aProjectRegistration
    "5 combinations of loads with no load conflicts:
        No configs and baselines =
        configs = and no baselines
        configs = and baselines =
        configs = and no baseline loaded (self) with a baseline to load (aProjectRegistration)
        config loaded (self), no config to load (aProjectRegistration) and no baseline loaded(self) with a baseline to load (aProjectRegistration) "

    self isValid
        ifFalse: [ self error: 'Invalid projectRegistration: ' , self printString ].
    aProjectRegistration isValid
        ifFalse: [ self error: 'Invalid projectRegistration: ' , aProjectRegistration printString ].
    configurationProjectSpec
        ifNil: [ 
            aProjectRegistration configurationProjectSpec notNil
                ifTrue: [ ^ true ] ]
        ifNotNil: [ 
            aProjectRegistration configurationProjectSpec
                ifNotNil: [ 
                    (aProjectRegistration configurationProjectSpec registrationsCompareEqual: configurationProjectSpec) not
                        ifTrue: [ ^ true ] ] ].
    ^ baselineProjectSpec
        ifNil: [ false ]
        ifNotNil: [ (baselineProjectSpec registrationsCompareEqual: aProjectRegistration baselineProjectSpec) not ]