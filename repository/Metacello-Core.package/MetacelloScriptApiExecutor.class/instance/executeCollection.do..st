"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: execution callback
"
executeCollection: aCollection do: projectSpecBlock
    self projectSpecsFromRepositoryArg
        do: [ :projectSpec | 
            (aCollection includes: (MetacelloScriptEngine baseNameOf: projectSpec className))
                ifTrue: [ projectSpecBlock value: (self applyArgsToProjectSpec: projectSpec copy) ] ]
