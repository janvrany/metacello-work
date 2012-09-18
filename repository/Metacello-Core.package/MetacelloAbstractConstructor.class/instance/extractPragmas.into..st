"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
extractPragmas: pragmaKeyword into: versionDict

	^self extractPragmas: pragmaKeyword for: self configurationClass into: versionDict
