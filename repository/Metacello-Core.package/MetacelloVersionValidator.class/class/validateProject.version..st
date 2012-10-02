"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
validateProject: aMetacelloProject version: versionString

	^self validateProject: aMetacelloProject version: versionString debug: #() recurse: false
