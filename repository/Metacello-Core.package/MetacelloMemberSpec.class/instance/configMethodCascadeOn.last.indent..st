"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
configMethodCascadeOn: aStream last: lastCascade indent: indent

	self spec 
		configMethodCascadeOn: aStream 
		member: self 
		last: lastCascade 
		indent: indent