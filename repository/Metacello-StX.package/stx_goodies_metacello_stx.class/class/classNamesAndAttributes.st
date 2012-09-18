"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: description - contents
"
classNamesAndAttributes
    "lists the classes which are to be included in the project.
     Each entry in the list may be: a single class-name (symbol),
     or an array-literal consisting of class name and attributes.
     Attributes are: #autoload or #<os> where os is one of win32, unix,..."

    ^ #(
        "<className> or (<className> attributes...) in load order"
        MetacelloStXPlatform
        MetacelloStXProject
        #'stx_goodies_metacello_stx'
        MetacelloStXPackageSpec
        MetacelloStXVersionConstructor
        MetacelloStXVersionSpec
    )
