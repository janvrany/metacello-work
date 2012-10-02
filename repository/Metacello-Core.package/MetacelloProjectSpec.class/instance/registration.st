"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: scripting
"
registration
    ^ MetacelloProjectRegistration
        registrationForProjectSpec: self
        ifAbsent: [ :ignored |  ]
        ifPresent: [ :existing :new | existing ]
