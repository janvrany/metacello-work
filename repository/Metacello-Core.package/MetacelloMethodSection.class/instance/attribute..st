"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
attribute: anObject
    self deprecated: 'Use attributes: instead'.
    self attributes size > 1
        ifTrue: [ self error: 'invalid use of attribute:' ].
    attributes := OrderedCollection with: anObject