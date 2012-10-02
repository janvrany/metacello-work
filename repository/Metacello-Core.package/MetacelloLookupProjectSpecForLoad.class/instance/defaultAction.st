"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: exception description
"
defaultAction
    "Result of signal should be the MetacelloProjectSpecForLoad to be used to perform the load. 
	Create a MetacelloProjectSpecForLoad and use the overrideProjectSpec: if you want to supply a different projectSpec"

    ^ MetacelloProjectSpecForLoad new
        projectSpec: self projectSpec;
        yourself
