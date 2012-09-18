"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: pragma extraction
"
extractExcludedValidations

	| exclusionDict |
	exclusionDict := Dictionary new.
	(Pragma 
		allNamed: #excludedValidationIssues:
		in: self configurationClass) do: [:pragma | | exclusions |
			exclusions := pragma argumentAt: 1.
			1 to: exclusions size by: 2 do: [:index |
			exclusionDict 
				at: (exclusions at: index) 
				put: (exclusions at: index + 1) ]].
	^exclusionDict