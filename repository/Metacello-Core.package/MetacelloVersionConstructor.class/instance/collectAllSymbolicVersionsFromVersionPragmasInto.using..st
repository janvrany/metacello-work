"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
collectAllSymbolicVersionsFromVersionPragmasInto: symbolicVersionMap using: executionBlock
	| defined versionPragmaDict versionString |
	versionPragmaDict := self extractSymbolicVersionPragmas.
	versionPragmaDict
		keysAndValuesDo: [ :versionSymbol :pragmaColl | 
			defined := false.
			pragmaColl
				do: [ :pragma | 
					defined := true.
					versionString := executionBlock value: versionSymbol value: pragma ].
			defined
				ifTrue: [ 
					versionString == nil
						ifFalse: [ symbolicVersionMap at: versionSymbol put: versionString ]].
			self reset ]