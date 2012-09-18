"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: loading
"
loadUsing: aLoader gofer: gofer

	^aLoader linearLoadPackageSpec: self gofer: gofer
