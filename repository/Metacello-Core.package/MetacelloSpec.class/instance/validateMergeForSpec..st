"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: merging
"
validateMergeForSpec: aSpec
    aSpec class = self class
        ifFalse: [ 
            self
                error:
                    'The project spec ' , self name printString , ' in project ' , self project label , ' has incompatible specs. '
                        , aSpec class name asString , ' and ' , self class name asString , ' are not compatible.' ]
