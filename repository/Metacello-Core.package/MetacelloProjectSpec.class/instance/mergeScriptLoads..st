"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: scripting
"
mergeScriptLoads: aSpec
    | otherLoads |

    self shouldBeMutable.
    (otherLoads := aSpec loads)
        ifNotNil: [ self loads ifNil: [ loads := otherLoads ] ifNotNil: [ loads := (loads , otherLoads) asSet asArray ] ].
    self loader: aSpec loader
