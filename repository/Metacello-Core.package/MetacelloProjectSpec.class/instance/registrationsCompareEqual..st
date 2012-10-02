"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: scripting
"
registrationsCompareEqual: aMetacelloProjectSpec
    "name className versionString operator loads preLoadDoIt postLoadDoIt"

    ^ self className = aMetacelloProjectSpec className
        and: [ self versionString = aMetacelloProjectSpec versionString and: [ self operator == aMetacelloProjectSpec operator ] ]
