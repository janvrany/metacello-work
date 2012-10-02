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
        MetacelloMethodSectionPath
        MetacelloMethodSpec
        MetacelloPackageSpecResolutionError
        MetacelloPlatform
        #'stx_goodies_metacello_core'
        MetacelloSymbolicVersionMethodSpec
        MetacelloVersionMethodSpec
        MetacelloAbstractConstructor
        MetacelloBaseConfiguration
        MetacelloCannotUpdateReleasedVersionError
        MetacelloCleanNotification
        MetacelloClearStackCacheNotification
        MetacelloErrorInProjectConstructionNotification
        MetacelloMethodSection
        MetacelloProject
        MetacelloProjectRegistration
        MetacelloProjectRegistry
        MetacelloProjectSpecForLoad
        MetacelloProjectSpecGenerator
        MetacelloProjectSpecLoadError
        MetacelloScriptEngine
        MetacelloScriptExecutor
        MetacelloScriptGitHubDownloadNotification
        MetacelloScriptNotification
        MetacelloScriptingError
        MetacelloSemanticVersionNumber
        MetacelloSkipDirtyPackageLoad
        MetacelloSpec
        MetacelloSpecLoader
        MetacelloStackCacheNotification
        MetacelloValidationFailure
        MetacelloValidationIssue
        MetacelloValidationNotification
        MetacelloVersion
        MetacelloVersionDoesNotExistError
        MetacelloVersionNumber
        MetacelloAbstractPackageSpec
        MetacelloAbstractVersionConstructor
        MetacelloBaselineSpecGenerator
        MetacelloCleanLoadAndTestsNotification
        MetacelloCleanLoadNotification
        MetacelloConfigurationSpecGenerator
        MetacelloConflictingProjectError
        MetacelloLockedProjectError
        MetacelloMemberListSpec
        MetacelloMemberSpec
        MetacelloProjectSpec
        MetacelloProjectSpecLoadConflict
        MetacelloResolveProjectUpgrade
        MetacelloScriptApiExecutor
        MetacelloScriptEnsureProjectLoadedForDevelopment
        MetacelloScriptImageExecutor
        MetacelloScriptProjectSpecNotification
        MetacelloScriptRegistryExecutor
        MetacelloSymbolicVersionDoesNotExistError
        MetacelloSymbolicVersionSpec
        MetacelloUseUpgradeError
        MetacelloValidationCriticalWarning
        MetacelloValidationError
        MetacelloValidationWarning
        MetacelloValueHolderSpec
        MetacelloVersionDefinitionError
        MetacelloVersionMethodSection
        MetacelloVersionSpec
        MetacelloVersionValidator
        MetacelloAddMemberSpec
        MetacelloAllowConflictingProjectUpgrade
        MetacelloAllowProjectDowngrade
        MetacelloAllowProjectUpgrade
        MetacelloBaselineConstructor
        MetacelloCopyMemberSpec
        MetacelloGenericProjectSpec
        MetacelloGroupSpec
        MetacelloLookupBaselineSpecForEnsureLoad
        MetacelloLookupProjectSpec
        MetacelloLookupProjectSpecForLoad
        MetacelloMergeMemberSpec
        MetacelloPackagesSpec
        MetacelloProjectReferenceSpec
        MetacelloProjectSpecLoadedNotification
        MetacelloRemoveMemberSpec
        MetacelloSymbolicVersionNotDefinedError
        MetacelloToolBoxConstructor
        MetacelloVersionConstructor
    )
