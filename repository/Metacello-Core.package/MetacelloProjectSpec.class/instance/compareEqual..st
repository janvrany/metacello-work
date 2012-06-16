scripting
compareEqual: aMetacelloProjectSpec
    "name className versionString operator loads preLoadDoIt postLoadDoIt"

    ^ self name = aMetacelloProjectSpec name
        and: [ 
            self className = aMetacelloProjectSpec className
                and: [ 
                    self versionString = aMetacelloProjectSpec versionString
                        and: [ 
                            self operator == aMetacelloProjectSpec operator
                                and: [ 
                                    self loads = aMetacelloProjectSpec loads
                                        and: [ self preLoadDoIt == aMetacelloProjectSpec preLoadDoIt and: [ self postLoadDoIt == aMetacelloProjectSpec postLoadDoIt ] ] ] ] ] ]