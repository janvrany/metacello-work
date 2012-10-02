"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: operations
"
incrementMinorVersionNumber

	| int |
	self size to: 1 by: -1 do: [:index | 
		(int := self at: index) isString 
			ifFalse: [ 
				self at: index put: int + 1.
				^self ]].
