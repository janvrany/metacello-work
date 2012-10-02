"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
fromMCBaselineProjectSpec: aProjectSpec
    ^ self new
        projectName: aProjectSpec name;
        baselineProjectSpec: aProjectSpec;
        yourself
