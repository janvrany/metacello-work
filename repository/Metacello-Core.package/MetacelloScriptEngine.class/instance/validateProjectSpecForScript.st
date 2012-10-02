"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: project lookup
"
validateProjectSpecForScript
    | issues |
    issues := self projectSpec
        validateForScriptLoad: self
        withDefaultVersionString: self defaultVersionString
        withDefaultRepositoryDecription: self defaultRepositoryDescription.
    issues isEmpty
        ifTrue: [ ^ self ].
    (MetacelloValidationFailure issues: issues message: 'Project spec validation failure') signal
