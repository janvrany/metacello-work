"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
computeVersionStatus: matchBlock
    self computeVersionStatus: (self expandToLoadableSpecNames: #('ALL')) matchBlock: matchBlock

    "Created: / 19-09-2012 / 02:27:05 / Jan Vrany <jan.vrany@fit.cvut.cz>"
