"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: description - project information
"
productInstallDirBaseName
    "Returns a default installDir which will appear in <app>.nsi.
     This is usually not the one you want to keep"

    ^ (self package asCollectionOfSubstringsSeparatedByAny:':/') last
