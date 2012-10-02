"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: scripting
"
unregisterProject
    ^ MetacelloProjectRegistration
        registrationForProjectSpec: self
        ifAbsent: [  ]
        ifPresent: [ :existing :new | existing unregisterProject ]
