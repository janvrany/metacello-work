"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: *metacello-core-scripting
"
execute: projectSpecBlock against: aScriptExecutor
    aScriptExecutor executeCollection: self do: projectSpecBlock