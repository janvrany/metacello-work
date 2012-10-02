"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: registration
"
registerProjectRegistration: aMetacelloProjectRegistration
    "unconditionally register <newRegistration> ... use with care"

    | spec |

    (spec := aMetacelloProjectRegistration configurationProjectSpec)
        ifNotNil: [
            self configurationRegistry
                at: spec className
                ifPresent: [ :existing | 
                    (existing configurationProjectSpec registrationsCompareEqual: spec)
                        ifFalse: [ 
                            Transcript
                                cr;
                                show:
                                        'REGISTRATION OF INCOMPATABLE PROJECTS: ' , existing printString , ' REPLACED BY '
                                                , aMetacelloProjectRegistration printString ] ].
            spec immutable.
            self configurationRegistry at: spec className put: aMetacelloProjectRegistration ].
    (spec := aMetacelloProjectRegistration baselineProjectSpec)
        ifNotNil: [
            self baselineRegistry
                at: spec className
                ifPresent: [ :existing | 
                    (existing baselineProjectSpec registrationsCompareEqual: spec)
                        ifFalse: [ 
                            Transcript
                                cr;
                                show:
                                        'REGISTRATION OF INCOMPATABLE PROJECTS: ' , existing printString , ' REPLACED BY '
                                                , aMetacelloProjectRegistration printString ] ].
            spec immutable.
            self baselineRegistry at: spec className put: aMetacelloProjectRegistration ].
    aMetacelloProjectRegistration immutable
