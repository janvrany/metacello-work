"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: project lookup
"
lookupBaselineSpecForEnsure: aProjectSpec
	| registration loadedSpec |
	registration := MetacelloProjectRegistration
		registrationForProjectSpec: aProjectSpec
		ifAbsent: [ :new | new ]
		ifPresent: [ :existing :new | existing ].
	^ registration lookupSpec: aProjectSpec
