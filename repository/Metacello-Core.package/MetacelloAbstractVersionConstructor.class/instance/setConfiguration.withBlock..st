"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api callbacks
"
setConfiguration: aString withBlock: aBlock
    | spec projectSpec |
    projectSpec := self project configurationOfProjectSpec
        name: aString;
        yourself.
    spec := self project projectReferenceSpec
        name: aString;
        projectReference: projectSpec;
        yourself.
    self root packages merge: spec.
    self with: projectSpec during: aBlock
