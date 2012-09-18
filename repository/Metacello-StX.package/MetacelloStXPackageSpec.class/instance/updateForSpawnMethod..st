"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: development support
"
updateForSpawnMethod: sourceSpec
	"This means that this spec was used in a baseline and will be used in a version .... drop all information that isn't useful"

	| nm fl |
	nm := name.
	fl := file.
	sourceSpec ~~ nil ifTrue: [ fl := sourceSpec file ].
	super updateForSpawnMethod: sourceSpec.
	file := repositories := goferPackage := preLoadDoIt := postLoadDoIt := nil.
	name := nm.
	file := fl.
