"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
extractNumericComponent: subString forPattern: forPattern
    "$. separated components are integers"

    | number |
    forPattern
        ifTrue: [ ^ subString ].
    number := [ subString asNumber ]
        on: Error
        do: [ :ex | ex return: subString ].
    ^ number asString = subString
        ifTrue: [ number ]
        ifFalse: [ subString ]
