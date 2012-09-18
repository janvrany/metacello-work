"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: conversion
"
asAttributeOrPath
    self size = 1
        ifTrue: [ 
            | attribute |
            attribute := self at: 1.
            ^ attribute size = 1
                ifTrue: [ attribute at: 1 ]
                ifFalse: [ attribute ] ].
    ^ self