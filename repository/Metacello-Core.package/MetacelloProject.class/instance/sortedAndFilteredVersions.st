"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
sortedAndFilteredVersions

		^(self map values asArray sort: [:a :b | a >= b ]) select: [:vrsn | (#(broken baseline) includes: vrsn blessing) not ].
