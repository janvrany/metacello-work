"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: handlers
"
handleLookupProjectSpec: exception
    ^ exception
        resume:
            ((self lookupProjectSpecFor: exception projectSpec) ifNil: [ ^ exception resume: exception projectSpec ])
