"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: scripting
"
canUpgradeTo: aMetacelloProjectSpec
    (self className = aMetacelloProjectSpec className and: [ self operator == aMetacelloProjectSpec operator ])
        ifFalse: [ ^ false ].
    ^ aMetacelloProjectSpec version perform: self operator with: self version
