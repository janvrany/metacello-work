"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: actions api
"
load: required
    self
        load: required
        onProjectDownGrade: [ :ex :existing :new | ex allowEvenIfLocked ]
        onProjectUpgrade: [ :ex :existing :new | ex allowEvenIfLocked ]
