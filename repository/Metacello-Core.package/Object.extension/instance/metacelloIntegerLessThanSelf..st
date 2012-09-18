"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: *metacello-core
"
metacelloIntegerLessThanSelf: anInteger

	^self error: 'Invalid Metacello verson component - should be String or Integer.'