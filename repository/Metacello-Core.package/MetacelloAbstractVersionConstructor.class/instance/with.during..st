"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
with: aMetacelloSpec during: aBlock 

	| previousRoot |
	previousRoot := self root.
	self root: aMetacelloSpec.
	aBlock
		ensure: [self root: previousRoot]