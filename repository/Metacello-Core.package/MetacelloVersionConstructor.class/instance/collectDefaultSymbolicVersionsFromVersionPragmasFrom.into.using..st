"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
collectDefaultSymbolicVersionsFromVersionPragmasFrom: versionPragmaDict into: symbolicVersionMap using: executionBlock
	| defined versionString |
	versionPragmaDict
		keysAndValuesDo: [ :versionSymbol :pragmaColl | 
			defined := false.
			symbolicVersionMap
				at: versionSymbol
				ifAbsent: [ 
					"process the defaultSymbolicVersion only if the symbolicVersion is not defined yet"
					pragmaColl
						do: [ :pragma | 
							defined := true.
							versionString := executionBlock value: versionSymbol value: pragma ].
					defined
						ifTrue: [ 
							versionString == nil
								ifFalse: [ symbolicVersionMap at: versionSymbol put: versionString ] ].
					self reset ] ]
