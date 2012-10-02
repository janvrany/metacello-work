"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
possibleVersions
    ^ self project symbolicVersionSymbols , (self project versions collect: [ :each | each versionString ])
