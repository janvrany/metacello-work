"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
fromSpec: aMetacelloVersionSpec
    ^ (self new versionNumber: aMetacelloVersionSpec versionNumber)
        spec: aMetacelloVersionSpec;
        yourself
