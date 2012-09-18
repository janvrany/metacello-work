"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api callbacks
"
setFor: attributeList version: aString
    "conditional symbolicVersion support"

    attributeList asMetacelloAttributeList
        do: [ :attribute | 
            self attributeMap at: attribute put: aString.
            self addAttribute: attribute ]