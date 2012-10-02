"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: *metacello-core
"
setPreLoadDoItInMetacelloSpec: aMetacelloSpec
        self isUnary ifFalse:[
            self error:'Invalid symbol'
        ].
        aMetacelloSpec setPreLoadDoIt: 
                (aMetacelloSpec project valueHolderSpec
                        value: self;
                        yourself)

    "Modified: / 18-09-2012 / 19:19:46 / Jan Vrany <jan.vrany@fit.cvut.cz>"
