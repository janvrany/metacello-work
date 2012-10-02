"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: scripting
"
compareEqual: aMetacelloProjectSpec
    "name className versionString operator loads preLoadDoIt postLoadDoIt"

    ^ self className = aMetacelloProjectSpec className
        and: [ 
            self versionString = aMetacelloProjectSpec versionString
                and: [ 
                    self operator == aMetacelloProjectSpec operator
                        and: [ 
                            self loads = aMetacelloProjectSpec loads
                                and: [ self preLoadDoIt == aMetacelloProjectSpec preLoadDoIt and: [ self postLoadDoIt == aMetacelloProjectSpec postLoadDoIt ] ] ] ] ]
