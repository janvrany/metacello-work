"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: project lookup
"
getBaselineProjectUnconditionalLoad: unconditionalLoad
    | project |
    project := (self getBaselineUnconditionalLoad: unconditionalLoad) project.
    project version spec repositories: self repositories copy.
    ^ project
