"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: *metacello-core
"
setConfiguration: aString withInMetacelloConfig: aMetacelloConfig
    aMetacelloConfig setConfiguration: aString withBlock: self
