"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
for: attributeListOrSymbol do: aBlock
    "conditional version support"

    attributeListOrSymbol setForDo: aBlock withInMetacelloConfig: self