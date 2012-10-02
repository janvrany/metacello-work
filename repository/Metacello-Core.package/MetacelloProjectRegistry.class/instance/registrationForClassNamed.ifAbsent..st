"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: querying
"
registrationForClassNamed: aClassName ifAbsent: absentBlock
    | baseName |
    baseName := MetacelloScriptEngine baseNameOf: aClassName.
    self configurationRegistry at: aClassName ifPresent: [ :registration | ^ registration ].
    self baselineRegistry at: aClassName ifPresent: [ :registration | ^ registration ].
    self configurationRegistry at: 'ConfigurationOf' , baseName ifPresent: [ :registration | ^ registration ].
    self baselineRegistry at: 'BaselineOf' , baseName ifPresent: [ :registration | ^ registration ].
    ^ absentBlock value
