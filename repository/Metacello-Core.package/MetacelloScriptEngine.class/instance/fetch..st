"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: actions api
"
fetch: required
    self
        fetchRecord: [ :version | 
            required isEmpty
                ifTrue: [ version fetch ]
                ifFalse: [ version fetch: required ] ]
        required: required
