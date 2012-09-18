"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: adding
"
addMethodSection: attributePath versionSpec: versionSpec
    | attributeList methodSection index sections found |
    attributeList := attributePath last.
    methodSection := MetacelloVersionMethodSection new
        attributes: attributeList;
        versionSpec: versionSpec;
        yourself.
    attributePath size > 1
        ifTrue: [ 
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
                                    index == (attributePath size -1)
                                        ifTrue: [ 
                                            ms methodSections add: methodSection.
                                            ^ self ].
                                    sections := ms methodSections.
                                    index := index + 1.
                                    found := true ] ] ].
            self error: 'Method section for attribute: ' , (attributePath at: index) printString , ' not found.' ]
        ifFalse: [ self methodSections add: methodSection ]