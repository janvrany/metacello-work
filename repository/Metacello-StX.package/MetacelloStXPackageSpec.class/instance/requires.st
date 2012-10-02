"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: querying
"
requires

    requires == nil ifTrue: [ requires := Prerequisites for: self ].
    ^requires

    "Created: / 19-09-2012 / 02:35:21 / Jan Vrany <jan.vrany@fit.cvut.cz>"
