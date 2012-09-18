"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
descriptionForReasonCode: reasonCode
	^ self reasonCodeDescriptions at: reasonCode ifAbsent: [ self error: 'Unknown reasonCode: ' , reasonCode printString ]