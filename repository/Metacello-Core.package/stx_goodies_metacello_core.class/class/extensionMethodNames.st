"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: description - contents
"
extensionMethodNames
    "lists the extension methods which are to be included in the project.
     Entries are 2-element array literals, consisting of class-name and selector."

    ^ #(
        Block setAuthorInMetacelloConfig:
        Block setBlessingInMetacelloConfig:
        Block setDescriptionInMetacelloConfig:
        Block setPackage:withInMetacelloConfig:
        Block setProject:withInMetacelloConfig:
        Block setTimestampInMetacelloConfig:
        Collection addToMetacelloPackages:
        Collection asMetacelloAttributeList
        Collection asMetacelloAttributePath
        Collection mergeIntoMetacelloPackages:
        Collection removeFromMetacelloPackages:
        Collection setForDo:withInMetacelloConfig:
        Collection setForVersion:withInMetacelloConfig:
        Collection setIncludesInMetacelloPackage:
        Collection setLoadsInMetacelloProject:
        Collection setRequiresInMetacelloPackage:
        Integer metacelloIntegerLessThanSelf:
        Integer metacelloStringLessThanSelf:
        Integer metacelloVersionComponentLessThan:
        Object metacelloIntegerLessThanSelf:
        Object metacelloStringLessThanSelf:
        Object metacelloVersionComponentLessThan:
        String addToMetacelloPackages:
        String asMetacelloVersionNumber
        String mergeIntoMetacelloPackages:
        String metacelloIntegerLessThanSelf:
        String metacelloStringLessThanSelf:
        String metacelloVersionComponentLessThan:
        String removeFromMetacelloPackages:
        String setAuthorInMetacelloConfig:
        String setAuthorInMetacelloVersion:
        String setBlessingInMetacelloConfig:
        String setBlessingInMetacelloVersion:
        String setDescriptionInMetacelloConfig:
        String setDescriptionInMetacelloVersion:
        String setIncludesInMetacelloPackage:
        String setLoadsInMetacelloProject:
        String setPackage:withInMetacelloConfig:
        String setProject:withInMetacelloConfig:
        String setRequiresInMetacelloPackage:
        String setTimestampInMetacelloConfig:
        String setTimestampInMetacelloVersion:
        Symbol asMetacelloAttributeList
        Symbol asMetacelloAttributePath
        Symbol setForDo:withInMetacelloConfig:
        Symbol setForVersion:withInMetacelloConfig:
        Symbol setPostLoadDoItInMetacelloSpec:
        Symbol setPreLoadDoItInMetacelloSpec:
        Timestamp setTimestampInMetacelloVersion:
        UndefinedObject asMetacelloVersionNumber
        UndefinedObject setAuthorInMetacelloVersion:
        UndefinedObject setBlessingInMetacelloVersion:
        UndefinedObject setDescriptionInMetacelloVersion:
        UndefinedObject setPostLoadDoItInMetacelloSpec:
        UndefinedObject setPreLoadDoItInMetacelloSpec:
        UndefinedObject setProject:withInMetacelloConfig:
        UndefinedObject setTimestampInMetacelloVersion:
    )
