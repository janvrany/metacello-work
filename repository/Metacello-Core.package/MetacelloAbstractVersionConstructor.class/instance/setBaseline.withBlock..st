"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api callbacks
"
setBaseline: aString withBlock: aBlock
    | projectSpec |
    projectSpec := self setBaseline: aString.
    self with: projectSpec during: aBlock
