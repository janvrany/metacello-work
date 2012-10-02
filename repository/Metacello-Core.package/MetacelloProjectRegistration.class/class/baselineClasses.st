"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
baselineClasses
    "Return a set of the Metacello baseline classes that have been loaded into the image."

    "self baselineClasses"

    ^ BaselineOf allSubclasses
