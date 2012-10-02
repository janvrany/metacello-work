"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: querying
"
projectSpecForClassNamed: aClassName ifAbsent: absentBlock
    ^ (self configurationRegistry
        at: aClassName
        ifAbsent: [ ^ (self baselineRegistry at: aClassName ifAbsent: [^absentBlock value]) baselineProjectSpec ])
        configurationProjectSpec
