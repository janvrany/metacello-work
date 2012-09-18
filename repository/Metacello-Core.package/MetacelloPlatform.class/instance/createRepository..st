"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: repository creation
"
createRepository: aRepositorySpec

        | type cls |
        type := aRepositorySpec type.
        ((type = 'http') and:[(cls := Smalltalk at:#MCHttpRepository) notNil])
                ifTrue: [^ cls
                                location: aRepositorySpec description
                                user: aRepositorySpec username
                                password: aRepositorySpec password].
        (type = 'directory' and:[(cls := Smalltalk at:#MCDirectoryRepository) notNil])
                ifTrue: [^ cls new
                                directory: (FileDirectory on: aRepositorySpec description)].
        (type = 'dictionary' and:[(cls := Smalltalk at:#MCDictionaryRepository) notNil])
                ifTrue: [       | description headerSize globalName |   
                        
                        description := aRepositorySpec description.
                        headerSize := 'dictionary://' size.
                        globalName := (description copyFrom: headerSize + 1 to: description size) asSymbol.
                        ^Smalltalk at: globalName ifAbsent: [Smalltalk at: globalName put: cls new ]].
        ^ nil

    "Modified: / 18-09-2012 / 14:09:54 / Jan Vrany <jan.vrany@fit.cvut.cz>"
