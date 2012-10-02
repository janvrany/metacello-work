"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: comparision
"
hash
    ^ ((String stringHash: projectName initialHash: 0) bitXor: configurationProjectSpec metacelloRegistrationHash)
        bitXor: baselineProjectSpec metacelloRegistrationHash
