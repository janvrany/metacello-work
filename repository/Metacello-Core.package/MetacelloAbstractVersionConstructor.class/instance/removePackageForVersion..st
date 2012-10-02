"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api spec callbacks
"
removePackageForVersion: aString
    | spec |
    spec := self project packageSpec
        name: aString;
        yourself.
    self root packages remove: spec
