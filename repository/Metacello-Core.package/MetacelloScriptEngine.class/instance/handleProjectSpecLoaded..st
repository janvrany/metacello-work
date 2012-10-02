"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: handlers
"
handleProjectSpecLoaded: exception
    MetacelloProjectRegistration
        registrationForProjectSpec: exception projectSpec
        ifAbsent: [ :new | 
            new
                loadedInImage: true;
                registerProject ]
        ifPresent: [ :existing :new | 
            "unconditionally merge new with existing (updates registration)"
            existing
                copyOnWrite: [ :existingCopy | 
                    existingCopy
                        loadedInImage: true;
                        merge: new ] ].
    exception resume
