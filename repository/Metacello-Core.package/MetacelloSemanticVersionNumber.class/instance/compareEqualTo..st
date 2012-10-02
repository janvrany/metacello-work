"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
compareEqualTo: aMetacelloVersionNumber
    aMetacelloVersionNumber species = self species
        ifFalse: [ ^ false ].
    (self compareEqualTo: self normalVersion other: aMetacelloVersionNumber normalVersion)
        ifFalse: [ ^ false ].
    (self compareEqualTo: self preReleaseVersion other: aMetacelloVersionNumber preReleaseVersion)
        ifFalse: [ ^ false ].
    ^ self compareEqualTo: self buildVersion other: aMetacelloVersionNumber buildVersion
