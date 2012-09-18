"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
attributeOrPath
    ^ self parent == nil
        ifTrue: [ 
            self attributes size == 1
                ifTrue: [ self attributes first ]
                ifFalse: [ self attributes ] ]
        ifFalse: [ self attributePath ]