"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
extractNameFromFile

	file == nil ifTrue: [ ^nil ].
	^(self loader nameComponentsFrom: self file) first
