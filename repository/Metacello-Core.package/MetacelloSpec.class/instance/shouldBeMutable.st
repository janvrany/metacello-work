"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: mutability
"
shouldBeMutable
    self isMutable
        ifTrue: [ ^ self ].
    self error: 'Not allowed to modify an immutable object'
