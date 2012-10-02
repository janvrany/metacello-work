"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
issues: anObject message: aString
    ^ self new
        issues: anObject;
        signal: aString
