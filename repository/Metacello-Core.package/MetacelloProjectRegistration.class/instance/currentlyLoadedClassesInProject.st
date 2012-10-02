"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: querying
"
currentlyLoadedClassesInProject
    | classes |
    classes := Set new.
    self
        configurationProjectSpecIfPresent: [ :spec | classes addAll: spec currentlyLoadedClassesInVersion ]
        ifAbsent: [  ].
    self baselineProjectSpecIfPresent: [ :spec | classes addAll: spec currentlyLoadedClassesInVersion ] ifAbsent: [  ].
    ^ classes
