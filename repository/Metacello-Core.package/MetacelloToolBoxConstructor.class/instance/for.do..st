"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
for: attribute do: aBlock
	"conditional version support"

	| methodSection |
	methodSection := (MetacelloVersionMethodSection new)
				attribute: attribute;
				block: aBlock;
				yourself.
	currentSection ~~ nil
		ifTrue: [ currentSection addMethodSection: methodSection ]
		ifFalse: [ self methodSections add: methodSection]
