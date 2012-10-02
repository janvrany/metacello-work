"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: registration
"
registrationFor: aMetacelloProjectRegistration ifPresent: presentBlock ifAbsent: absentBlock
    | baseName spec |

    baseName := aMetacelloProjectRegistration baseName.
    (spec := aMetacelloProjectRegistration configurationProjectSpec)
        ifNotNil: [ self configurationRegistry at: spec className ifPresent: [ :existing | ^ presentBlock value: existing ] ].
    (spec := aMetacelloProjectRegistration baselineProjectSpec)
        ifNotNil: [ self baselineRegistry at: spec className ifPresent: [ :existing | ^ presentBlock value: existing ] ].
    self configurationRegistry
        at: 'ConfigurationOf' , baseName
        ifPresent: [ :existing | ^ presentBlock value: existing ].
    self baselineRegistry at: 'BaselineOf' , baseName ifPresent: [ :existing | ^ presentBlock value: existing ].
    ^ absentBlock value
