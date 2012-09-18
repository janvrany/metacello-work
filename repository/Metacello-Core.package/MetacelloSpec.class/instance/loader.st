"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
loader

	loader == nil 
		ifTrue: [ | prjctLoader |
			(prjctLoader := self project loader) == nil
				ifTrue: [ self loader: (self project loaderClass on: self) ]
				ifFalse: [ self loader: prjctLoader ]].
	^loader