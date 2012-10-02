"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
collectAllVersionsFromVersionPragmasInto: versionMap using: executionBlock
    | defined versionPragmaDict |
    versionPragmaDict := self extractVersionPragmas.
    versionPragmaDict
        keysAndValuesDo: [ :versionString :pragmaColl | 
            | versionSpec |
            versionSpec := self project versionSpec.
            versionSpec versionString: versionString.
            defined := false.
            [ 
            pragmaColl
                do: [ :pragma | 
                    executionBlock value: versionSpec value: pragma.
                    defined := true ] ]
                on: Error
                do: [ :ex | 
                    (MetacelloErrorInProjectConstructionNotification versionString: versionSpec versionString exception: ex)
                        ifTrue: [ ^ ex pass ]
                        ifFalse: [ 
                            self errorMap at: versionSpec versionString put: ex.
                            defined := false ] ].
            defined
                ifTrue: [ 
                    self validateVersionString: versionString againstSpec: versionSpec.
                    versionMap at: versionSpec versionString put: versionSpec createVersion ].
            self reset ]
