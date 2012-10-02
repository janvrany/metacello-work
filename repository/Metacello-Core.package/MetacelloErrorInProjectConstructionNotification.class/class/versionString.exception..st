"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
versionString: aString exception: anException
    ^ self new
        versionString: aString;
        exception: anException;
        signal
