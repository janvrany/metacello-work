"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: querying
"
requires

    requires == nil ifTrue: [ 
        requires := Prerequisites for: self. 
    ].
    ^requires

    "Created: / 05-09-2012 / 19:47:56 / Jan Vrany <jan.vrany@fit.cvut.cz>"
