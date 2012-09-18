"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
validateProject: aMetacelloProject debug: debugList recurse: aBool
	^ ((self new)
		recurse: aBool;
		debug: debugList;
		configurationClass: aMetacelloProject configuration class;
		yourself) validateProject: aMetacelloProject