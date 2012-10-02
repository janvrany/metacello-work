"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: copying
"
postCopy
    super postCopy.
    baselineRegistry := self baselineRegistry copy.
    configurationRegistry := self configurationRegistry copy
