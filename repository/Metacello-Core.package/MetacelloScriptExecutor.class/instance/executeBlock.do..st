"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: execution callback
"
executeBlock: selectBlock do: projectSpecBlock
    ((projectSpecGenerator projectSpecListBlock value select: selectBlock) select: self projectSpecSelectBlock)
        do: [ :projectSpec | projectSpecBlock value: (self applyArgsToProjectSpec: projectSpec copy) ]
