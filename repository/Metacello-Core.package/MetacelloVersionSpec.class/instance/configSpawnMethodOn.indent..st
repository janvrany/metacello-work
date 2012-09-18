"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
configSpawnMethodOn: aStream indent: indent

	self configMethodValueOn: aStream for: self getBlessing selector: 'blessing:' last: false indent: indent.
	self configMethodValueOn: aStream for: self getAuthor selector: 'author:' last: false indent: indent.
	self configMethodValueOn: aStream for: self getTimestamp selector: 'timestamp:' last: false indent: indent.

