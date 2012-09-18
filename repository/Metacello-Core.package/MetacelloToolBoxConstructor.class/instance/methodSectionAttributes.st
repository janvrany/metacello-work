"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
methodSectionAttributes
    | attributes |
    attributes := Set new.
    self methodSectionsDo: [ :methodSection | attributes addAll: methodSection attributes ].
    ^ attributes