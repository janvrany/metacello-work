"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: deprecated
"
spawnPackageMethodIn: aConfig named: newSelector sourceVersion: sourceVersionString targetVersion: targetVersionString

	self deprecated: 'see MetacelloToolBox class>>createDevelopment:for:importFromBaseline:description: for a similar example'.
	^self 
		spawnPackageMethodIn: aConfig 
		category: 'versions'
		named: newSelector 
		sourceVersion: sourceVersionString 
		targetVersion: targetVersionString 
		blessing: #development
