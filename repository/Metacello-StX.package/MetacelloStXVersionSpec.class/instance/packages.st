"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
packages
    packages isNil ifTrue: [ packages := self project packagesSpec ].
    ^ packages

    "Created: / 19-09-2012 / 02:24:25 / Jan Vrany <jan.vrany@fit.cvut.cz>"
