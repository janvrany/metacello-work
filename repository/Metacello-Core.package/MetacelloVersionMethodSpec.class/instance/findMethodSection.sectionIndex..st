"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: adding
"
findMethodSection: attributeOrPath sectionIndex: sectionIndex
    | attributePath index sections found |
    attributePath := attributeOrPath asMetacelloAttributePath.
    index := 1.
    sections := self methodSections.
    found := true.
    [ found ]
        whileTrue: [ 
            found := false.
            sections
                do: [ :ms | 
                    ms attributes = (attributePath at: index)
                        ifTrue: [ 
                            index == attributePath size
                                ifTrue: [ ^ ms ].
                            sections := ms methodSections.
                            index := index + 1.
                            found := true ] ] ].
    self error: 'Method section for attribute: ' , attributePath printString , ' not found.'