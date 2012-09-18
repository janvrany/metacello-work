"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
blessing

	blessing == nil 
		ifTrue: [
			^self project valueHolderSpec
				value: self project defaultBlessing;
				yourself].
	^ blessing