"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: exception handling
"
defaultAction
    "Default for Upgrade is to allow"

    self checkAllowed.
    ^ self newProjectRegistration
