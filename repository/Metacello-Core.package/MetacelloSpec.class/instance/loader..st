"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
loader: aLoader
    "We're interested in propogating the loader state, _except_ for the spec"

    self shouldBeMutable.
    loader := aLoader copy.
    loader spec: self
