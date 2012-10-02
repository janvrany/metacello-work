"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: exception handling
"
defaultAction
    "Result of signal should be the projectRegistration to be used to perform the load ... default is to disallow"

    ^ self existingProjectRegistration
