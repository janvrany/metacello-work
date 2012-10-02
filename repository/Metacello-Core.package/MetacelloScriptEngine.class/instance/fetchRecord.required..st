"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: actions api
"
fetchRecord: fetchRecordBlock required: required
    MetacelloProjectRegistration
        copyRegistryWhile: [ 
            self
                handleNotificationsForAction: [ 
                    | version loadedSpec |
                    self validateProjectSpecForScript.
                    [ loadedSpec := self lookupProjectSpecFor: self projectSpec ]
                        on: MetacelloAllowProjectDowngrade , MetacelloAllowProjectUpgrade
                        do: [ :notification | 
                            notification
                                handleOnDownGrade: [ :ex :existing :new | ex allowEvenIfLocked ]
                                onUpgrade: [ :ex :existing :new | ex allowEvenIfLocked ] ].
                    version := loadedSpec versionForScriptEngine: self.
                    self root: (fetchRecordBlock value: version) loadDirective ] ]
