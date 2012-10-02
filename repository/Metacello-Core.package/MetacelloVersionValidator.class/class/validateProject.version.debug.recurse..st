"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
validateProject: aMetacelloProject version: versionString debug: debugList recurse: aBool

	^ ((self new)
		configurationClass: aMetacelloProject configuration class;
		debug: debugList;
		recurse: aBool;
		yourself) validateProject: aMetacelloProject version: versionString
