"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
fromMCConfigurationProjectSpec: aProjectSpec
    ^ self new
        projectName: aProjectSpec name;
        configurationProjectSpec: aProjectSpec;
        yourself
