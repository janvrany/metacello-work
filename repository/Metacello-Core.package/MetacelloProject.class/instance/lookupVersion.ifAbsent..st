"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
lookupVersion: aVersionString ifAbsent: aBlock
    "please use version:...this is a private method"

    ^ self map
        at: aVersionString
        ifAbsent: [ 
            (MetacelloVersionDefinitionError project: self project versionString: aVersionString)
                exception: (self errorMap at: aVersionString ifAbsent: [ ^ aBlock value ]);
                raise ]

    "Modified: / 19-09-2012 / 02:14:37 / Jan Vrany <jan.vrany@fit.cvut.cz>"
