"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: scripting
"
metacelloRegistrationHash
    "projectPackage (ignored) repositories"

    ^ super metacelloRegistrationHash bitXor: self repositories metacelloRegistrationHash
