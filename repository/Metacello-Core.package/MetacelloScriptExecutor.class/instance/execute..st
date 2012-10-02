"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: execution
"
execute: statements
    statements
        do: [ :assoc | assoc value ifNil: [ self perform: assoc key ] ifNotNil: [ self perform: assoc key withArguments: assoc value ] ].
    projectSpecGenerator := self projectSpecGenerator.
    projectSpecGenerator target
        execute: [ :projectSpec | 
            | engine root |

            engine := MetacelloScriptEngine new
                options: self options copy;
                projectSpec: projectSpec;
                yourself.
            engine perform: actionArg key withArguments: actionArg value.
            (root := engine root) ifNotNil: [ self roots add: root ] ]
        against: self.
    ^ (self singleRoot and: [ self roots size == 1 ])
        ifTrue: [ self roots first ]
        ifFalse: [ self roots ]
