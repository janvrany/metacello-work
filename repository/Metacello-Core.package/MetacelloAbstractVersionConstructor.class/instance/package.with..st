"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
package: packageName with: aBlockOrString
    "Define specification for package <packageName>.
	 If <aBlockOrString> is a String (or Symbol), the String is expected to be a version (or symbolic version).
	If <aBlockOrString> is a Block, the specifications in <aBlockOrString> are applied to the project:
	
		spec package: 'MyPackage' with: '1.0'.
		
		spec package: 'MyPackage' with: [
			spec file:'MyPackage-dkh.1'.
			spec repository: '/opt/gemstone/repository'.
	 "

    self root package: packageName with: aBlockOrString constructor: self
