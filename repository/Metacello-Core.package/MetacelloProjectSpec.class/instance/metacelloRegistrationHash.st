"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: scripting
"
metacelloRegistrationHash
    "name className versionString operator loads preLoadDoIt postLoadDoIt"

    | hash |
    hash := String stringHash: name initialHash: 0.
    hash := String stringHash: self className initialHash: hash.
    hash := String stringHash: self versionString initialHash: hash.
    hash := String stringHash: self operator asString initialHash: hash.
    hash := String stringHash: self preLoadDoIt asString initialHash: hash.
    hash := String stringHash: self postLoadDoIt asString initialHash: hash.
    ^ hash bitXor: loads hash
