"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
evaluateMethodSection: methodSection version: sourceVersionString
	| versionSpec |
	versionSpec := self project versionSpec.
	versionSpec versionString: sourceVersionString.
	methodSection versionSpec: versionSpec.
	currentSection := methodSection.
	self with: versionSpec during: methodSection block.
	methodSection methodSections do: [ :ms | self evaluateMethodSection: ms version: sourceVersionString ]
