"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: scripting
"
compareEqual: aMetacelloProjectSpec
    "'projectPackage repositories'"

    ^ (super compareEqual: aMetacelloProjectSpec)
        and: [ self repositories compareEqual: aMetacelloProjectSpec repositories ]
