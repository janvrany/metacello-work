"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
verifyVersionImportPragmas: pragmaDict definedIn: versionMap
    pragmaDict copy
        keysAndValuesDo: [ :versionString :pragmaColl | 
            [ 
            pragmaColl
                do: [ :pragma | 
                    (pragma argumentAt: 2)
                        do: [ :importedVersion | 
                            versionMap
                                at: importedVersion
                                ifAbsent: [ 
                                    pragmaDict
                                        at: importedVersion
                                        ifAbsent: [ 
                                            ^ self
                                                error:
                                                    'The imported version:' , importedVersion printString , ' for version: ' , versionString
                                                        , ' referenced from the method: ' , pragma selector printString
                                                        , ' in configuration ' , configuration class printString
                                                        , ' has not been defined.' ] ] ] ] ]
                on: Error
                do: [ :ex | 
                    (MetacelloErrorInProjectConstructionNotification versionString: versionString exception: ex)
                        ifTrue: [ ^ ex pass ]
                        ifFalse: [ 
                            pragmaDict removeKey: versionString.
                            self errorMap at: versionString put: ex ] ] ]
