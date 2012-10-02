"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
for: attribute do: aBlock
	"conditional version support"

	| blockList |
	blockList := self attributeMap
		at: attribute
		ifAbsent: [ self attributeMap at: attribute put: (blockList := OrderedCollection new) ].
	blockList add: aBlock.
	self addAttribute: attribute
