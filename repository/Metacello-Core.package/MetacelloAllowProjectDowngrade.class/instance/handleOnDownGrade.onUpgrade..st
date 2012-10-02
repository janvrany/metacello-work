"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: handlers
"
handleOnDownGrade: onDownGradeBlock onUpgrade: onUpgradeBlock
    ^ onDownGradeBlock cull: self cull: self existingProjectRegistration cull: self newProjectRegistration
