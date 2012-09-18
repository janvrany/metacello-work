"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
methodSection: methodSection pre: preBlock last: last post: postBlock indent: indent
	| list |
	methodSection ~~ self
		ifTrue: [ preBlock value: methodSection value: indent ].
	list := methodSection methodSections.
	1 to: list size
		do: [ :index | | ms | 
			ms := list at: index.
			self
				methodSection: ms
				pre: preBlock
				last: index ~= list size
				post: postBlock
				indent: indent + 1 ].
	methodSection ~~ self
		ifTrue: [ postBlock value: methodSection value: indent value: last ]