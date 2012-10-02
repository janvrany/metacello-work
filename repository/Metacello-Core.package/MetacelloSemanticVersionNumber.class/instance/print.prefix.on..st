"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
print: components prefix: prefixChar on: aStream
    | beforeFirst |
    beforeFirst := true.
    components
        do: [ :component | 
            beforeFirst
                ifTrue: [ 
                    beforeFirst := false.
                    prefixChar ifNotNil: [ aStream nextPut: prefixChar ] ]
                ifFalse: [ aStream nextPut: $. ].
            aStream nextPutAll: component asString ]
