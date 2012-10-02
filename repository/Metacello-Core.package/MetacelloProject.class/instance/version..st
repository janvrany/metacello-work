"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: versions
"
version: aVersionString
    | vrsn |
    aVersionString isSymbol
        ifTrue: [ 
            | symbolicVersionString |
            symbolicVersionString := self symbolicVersionMap
                at: aVersionString
                ifAbsent: [ (MetacelloSymbolicVersionDoesNotExistError project: self project versionString: aVersionString) signal ].
            symbolicVersionString == #'notDefined'
                ifTrue: [ (MetacelloSymbolicVersionNotDefinedError project: self project versionString: aVersionString) signal ].
            ^ self
                lookupVersion: symbolicVersionString
                ifAbsent: [ (MetacelloSymbolicVersionDoesNotExistError project: self project versionString: symbolicVersionString) signal ] ].
    ^ self
        lookupVersion: aVersionString
        ifAbsent: [ (MetacelloVersionDoesNotExistError project: self project versionString: aVersionString) signal ]
