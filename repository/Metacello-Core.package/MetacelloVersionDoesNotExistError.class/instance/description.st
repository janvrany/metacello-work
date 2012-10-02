"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
description
    "Return a textual description of the exception."

    ^ 'Version ' , self versionString printString , ' is not defined in ' , self project label
        , '. Possible versions include: ' , self possibleVersions printString
