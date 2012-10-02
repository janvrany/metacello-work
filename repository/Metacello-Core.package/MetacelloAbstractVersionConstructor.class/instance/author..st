"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
author: aBlockOrString
    "Define author field of version spec (MetacelloMCVersionSpec).
	 If <aBlockOrString> is a String, the version spec author is set to the String.
	If <aBlockOrString> is a Block, the specifications in <aBlockOrString> are applied to the author spec (MetacelloValueHolderSpec). Not Recommended!
	
		spec author: 'dkh'.
		
		spec author: [
			spec value: 'dkh'. ].
	 "

    self root author: aBlockOrString constructor: self
