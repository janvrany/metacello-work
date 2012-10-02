"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: defaults
"
defaultRepositoryDescription
    DefaultRepositoryDescription
        ifNil: [ DefaultRepositoryDescription := MetacelloPlatform current defaultRepositoryDescription ].
    ^ DefaultRepositoryDescription
