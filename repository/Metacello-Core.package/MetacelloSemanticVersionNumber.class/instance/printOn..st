"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
printOn: aStream
    self print: self normalVersion prefix: nil on: aStream.
    self print: self preReleaseVersion prefix: $- on: aStream.
    self print: self buildVersion prefix: $+ on: aStream
