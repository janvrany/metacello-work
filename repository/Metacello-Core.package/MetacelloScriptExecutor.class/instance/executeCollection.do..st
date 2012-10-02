"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: execution callback
"
executeCollection: aCollection do: projectSpecBlock
    aCollection
        do: [ :projectName | 
            ((projectSpecGenerator projectSpecLookupBlock value: projectName) select: self projectSpecSelectBlock)
                do: [ :projectSpec | projectSpecBlock value: (self applyArgsToProjectSpec: projectSpec copy) ] ]
