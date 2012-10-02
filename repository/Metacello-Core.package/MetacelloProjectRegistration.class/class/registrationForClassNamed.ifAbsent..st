"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: querying
"
registrationForClassNamed: aClassName ifAbsent: absentBlock
    ^ self registry registrationForClassNamed: aClassName ifAbsent: absentBlock
