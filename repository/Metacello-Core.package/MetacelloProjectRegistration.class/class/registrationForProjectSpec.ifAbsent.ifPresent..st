"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: querying
"
registrationForProjectSpec: aProjectSpec ifAbsent: absentBlock ifPresent: presentBlock
    | newRegistration |
    newRegistration := aProjectSpec asProjectRegistration.
    self registry
        registrationFor: newRegistration
        ifPresent: [ :existing | ^ presentBlock value: existing value: newRegistration ]
        ifAbsent: [ ^ absentBlock value: newRegistration ]
