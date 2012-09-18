"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
attributePrintString
    | stream |
    stream := WriteStream on: String new.
    self attributes size = 1
        ifTrue: [ stream nextPutAll: '#' , attributes first asString printString ]
        ifFalse: [ 
            stream nextPutAll: '#('.
            self attributes
                do: [ :attribute | 
                    stream
                        nextPutAll: '#' , attribute asString printString;
                        space ].
            stream nextPut: $) ].
    ^ stream contents