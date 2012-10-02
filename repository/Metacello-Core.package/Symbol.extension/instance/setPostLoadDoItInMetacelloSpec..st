"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: *metacello-core
"
setPostLoadDoItInMetacelloSpec: aMetacelloSpec
        self isUnary ifFalse:[
            self error:'Invalid symbol'
        ].

        aMetacelloSpec setPostLoadDoIt: 
                (aMetacelloSpec project valueHolderSpec
                        value: self;
                        yourself)

    "Modified: / 18-09-2012 / 19:18:09 / Jan Vrany <jan.vrany@fit.cvut.cz>"
