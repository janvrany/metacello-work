"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: options
"
cacheRepository
    ^ (MetacelloMCProject new repositorySpec description: (self options at: #'cacheRepository' ifAbsent: [ ^ nil ]))
        createRepository
