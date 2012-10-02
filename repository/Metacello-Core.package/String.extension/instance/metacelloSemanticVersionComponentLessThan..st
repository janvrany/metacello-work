"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: *metacello-core-version comparison
"
metacelloSemanticVersionComponentLessThan: aMetacelloVersonComponent
    ^ aMetacelloVersonComponent metacelloSemanticStringLessThanSelf: self
