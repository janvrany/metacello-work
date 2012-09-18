"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: versions
"
latestVersion: blessing

	^(self map values select: [:version | blessing = version blessing ]) detectMax: [:version | version ]