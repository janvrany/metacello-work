"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: options
"
useCurrentVersion
    "private option used to implement the classic mode"

    ^ self options at: #'useCurrentVersion' ifAbsent: [ false ]
