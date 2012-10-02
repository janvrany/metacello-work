"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: lookup
"
lookupSpec: aProjectSpec
    | spec |
    
    (spec := self configurationProjectSpec)
        ifNotNil: [ 
            spec className = aProjectSpec className
                ifTrue: [ ^ spec ] ].
    (spec := self baselineProjectSpec)
        ifNotNil: [ 
            spec className = aProjectSpec className
                ifTrue: [ ^ spec ] ].
    ^ nil
