"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: execution callback
"
executeString: aString do: projectSpecBlock
    self singleRoot: true.
    (projectSpecGenerator projectSpecCreationBlock value: aString)
        do: [ :projectSpec | projectSpec ifNotNil: [ projectSpecBlock value: (self applyArgsToProjectSpec: projectSpec copy) ] ]
