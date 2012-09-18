"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: development support
"
updatePackageSpec: updatedSpecs using: anMCLoader
	"Add pkg copy to updatedSpecs if the file in current image is different from the receiver's file"
	
	self updatePackageSpec: updatedSpecs force: false using: anMCLoader
