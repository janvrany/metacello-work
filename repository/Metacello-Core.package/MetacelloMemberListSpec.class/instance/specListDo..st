"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: enumeration
"
specListDo: aBlock

	self list do: [:member |  aBlock value: member spec ]