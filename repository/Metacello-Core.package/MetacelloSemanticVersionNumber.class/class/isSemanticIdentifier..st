"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
isSemanticIdentifier: aString
    "whether the receiver is composed entirely of alphanumerics"

    aString
        do: [ :c | 
            c isAlphaNumeric
                ifFalse: [ 
                    c = $-
                        ifFalse: [ ^ false ] ] ].
    ^ true
