"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
name: aString
    ((aString at: 1) isSeparator or: [ (aString at: aString size) isSeparator ])
        ifTrue: [ self error: 'Names are not allowed to have leading or trailing blanks: ' , aString printString ].
    self shouldBeMutable.
    name := aString
