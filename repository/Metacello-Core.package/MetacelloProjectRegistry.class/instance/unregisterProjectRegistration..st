"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: registration
"
unregisterProjectRegistration: aMetacelloProjectRegistration
    | spec |

    (spec := aMetacelloProjectRegistration configurationProjectSpec)
        ifNotNil: [
            self configurationRegistry
                removeKey: spec className
                ifAbsent: [ self error: 'unexpectedly missing project registration' ] ].
    (spec := aMetacelloProjectRegistration baselineProjectSpec)
        ifNotNil: [ self baselineRegistry removeKey: spec className ifAbsent: [ self error: 'unexpectedly missing project registration' ] ]
