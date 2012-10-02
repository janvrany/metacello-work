"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: options
"
repositoryOverrides
    ^ (self options at: #'repositoryOverrides' ifAbsent: [ ^ nil ])
        collect: [ :description | (MetacelloMCProject new repositorySpec description: description) createRepository ]
