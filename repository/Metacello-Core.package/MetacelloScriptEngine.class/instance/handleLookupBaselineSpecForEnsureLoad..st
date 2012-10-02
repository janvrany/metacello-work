"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: handlers
"
handleLookupBaselineSpecForEnsureLoad: exception
	"if existing and new don't compare equal, then ensure the new baseline is loaded"

	| existing new |
	new := exception projectSpec.
	existing := self lookupBaselineSpecForEnsure: exception projectSpec.
	^ exception resume: (existing registrationsCompareEqual: new) not
