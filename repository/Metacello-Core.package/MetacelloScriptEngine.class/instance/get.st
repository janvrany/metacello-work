actions api
get
    " load a fresh copy from repo"

    | spec projectPackage |
    MetacelloProjectRegistration
        copyRegistryRestoreOnErrorWhile: [ 
            self validateProjectSpecForScript.
            spec := self projectSpec.
            projectPackage := spec projectPackage.
            projectPackage repositorySpecs do: [ :repoSpec | repoSpec createRepository flushForScriptGet ].
            projectPackage load.
            self root: (Smalltalk at: spec className asSymbol) project.
            MetacelloProjectRegistration
                registrationForProjectSpec: spec
                ifAbsent: [ :new | new registerProject ]
                ifPresent: [ :existing :new | 
                    existing
                        copyOnWrite: [ :existingCopy | 
                            spec
                                copyForRegistration: existingCopy
                                onWrite: [ :specCopy | specCopy ifNil: [ existingCopy merge: new ] ifNotNil: [ specCopy mergeScriptRepository: spec ] ] ] ] ]