"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: execution
"
applyArgsToProjectSpec: aProjectSpec
    classNameArg ifNotNil: [ aProjectSpec className: classNameArg ].
    versionArg ifNotNil: [ aProjectSpec versionString: versionArg ].
    repositoryArg ifNotNil: [ aProjectSpec repository: repositoryArg ].
    ^ aProjectSpec
