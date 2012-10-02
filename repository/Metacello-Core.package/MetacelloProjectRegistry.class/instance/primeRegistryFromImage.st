"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: initialization
"
primeRegistryFromImage
    "MetacelloProjectRegistration primeRegistryFromImage"

    MetacelloProjectRegistration configurationClasses
        do: [ :cl | 
            (self configurationRegistry includesKey: cl name asString)
                ifFalse: [ 
                    | version |

                    "not registered"
                    (version := cl project currentVersion)
                        ifNotNil: [ 
                            | projectSpec |
                            projectSpec := (version project projectSpec
                                name: (MetacelloScriptEngine baseNameOf: cl name asString);
                                className: cl name asString;
                                versionString: version versionString;
                                repositories: version project projectPackage repositories copy;
                                yourself) asConfigurationProjectSpec.
                            projectSpec asProjectRegistration
                                loadedInImage: true;
                                registerProject ] ] ].
    MetacelloProjectRegistration baselineClasses
        do: [ :cl | 
            (self baselineRegistry includesKey: cl name asString)
                ifFalse: [ 
                    | version |
                    "not registered"

                    (version := cl project currentVersion)
                        ifNotNil: [
                            | projectSpec |
                            projectSpec := (version project projectSpec
                                name: (MetacelloScriptEngine baseNameOf: cl name asString);
                                repositories: version project projectPackage repositories copy;
                                yourself) asBaselineProjectSpec.
                            projectSpec asProjectRegistration
                                loadedInImage: true;
                                registerProject ] ] ]
