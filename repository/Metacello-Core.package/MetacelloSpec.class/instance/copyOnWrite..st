"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: mutability
"
copyOnWrite: aBlock
    "assume that only registered projects are immutable ... otherwise you'll get an error"

    | copy |
    copy := self copy.
    aBlock value: copy.
    ^ copy