"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
baselineProjectSpecIfPresent: presentBlock ifAbsent: absentBlock
     ^ baselineProjectSpec ifNotNil: [ presentBlock cull: baselineProjectSpec ]  ifNil: absentBlock
