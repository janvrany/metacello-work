"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: description
"
preRequisites
    "list all required packages.
     This list can be maintained manually or (better) generated and
     updated by scanning the superclass hierarchies and looking for
     global variable accesses. (the browser has a menu function for that)
     Howevery, often too much is found, and you may want to explicitely
     exclude individual packages in the #excludedFromPrerequisites method."

    ^ #(
        #'stx:goodies/metacello/base'    "ConfigurationOf - superclass of MetacelloBaseConfiguration "
        #'stx:goodies/monticello'    "MCDictionaryRepository - referenced by MetacelloPlatform>>createRepository: "
        #'stx:libbasic'    "GenericException - superclass of MetacelloStackCacheNotification "
    )
