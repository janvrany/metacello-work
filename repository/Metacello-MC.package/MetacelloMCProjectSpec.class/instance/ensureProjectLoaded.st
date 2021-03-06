loading
ensureProjectLoaded
    "Ensure that the MetacelloProject is loaded in image. 
	 projectClass == nil or requested version non-existent warrants a project package load."

    "answer true if the projectClass exists"

    (self projectClass == nil or: [ self versionOrNil == nil ])
        ifTrue: [ 
            | pc |
            (pc := self projectClass) ~~ nil
                ifTrue: [ 
                    MetacelloClearStackCacheNotification
                        signal:
                            #(#'currentVersion' #'currentVersionAgainst:' #'currentVersionInfo' #'versionConstructor' #'loadableSpecNames') , {pc} ].
            self projectPackage ifNil: [ ^ true ].
            self ensureLoadUsing: self loader ].
    ^ self projectClass ~~ nil