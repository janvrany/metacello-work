"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: enumeration
"
methodSectionsInEvaluationOrder: attributes do: aBlock
	"breadth first traversal ... to collect selected sections, then evaluate individual sections in attribute order"

	| selected |
	selected := OrderedCollection new.
	self methodSection: self inEvaluationOrder: attributes do: [:methodSection | selected add: methodSection ]. 
	attributes
		do: [ :attribute | (selected select: [ :methodSection | methodSection attribute == attribute ]) do: aBlock ].
