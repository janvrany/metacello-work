"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: handlers
"
handleEnsureProjectLoadedForDevelopment: exception
    "if useCurrentVersion resume with true, else resume with false"

    ^ exception resume: self useCurrentVersion
