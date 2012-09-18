"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
methodSection: methodSection do: aBlock

	methodSection methodSections do: aBlock.
	methodSection methodSections do: [ :ms | self methodSection: ms do: aBlock ]