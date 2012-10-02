"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
calculate: aConfig project: aProject
    | pragma versionMap versionSpec |
    self configuration: aConfig.
    pragma := self extractBaselinePragmaFor: aConfig class.
    self
        setProject:
            (aProject
                ifNil: [ 
                    [ aConfig class project ]
                        on: MessageNotUnderstood
                        do: [ :ex | ex return: nil ] ]).
    versionSpec := self project versionSpec.
    self root: versionSpec.
    self evaluatePragma: pragma.
    versionMap := Dictionary new.
    self project attributes
        do: [ :attribute | 
            | blockList |
            (blockList := self attributeMap at: attribute ifAbsent: [  ]) ~~ nil
                ifTrue: [ blockList do: [ :block | self with: versionSpec during: block ] ] ].
    versionSpec versionString: self project singletonVersionName.
    versionMap at: versionSpec versionString put: versionSpec createVersion.
    self project map: versionMap.
    self project configuration: aConfig
