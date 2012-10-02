"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: comparision
"
= aRegistration
    aRegistration class == self class
        ifFalse: [ ^ false ].
    ^ (configurationProjectSpec registrationsCompareEqual: aRegistration configurationProjectSpec)
        and: [ baselineProjectSpec registrationsCompareEqual: aRegistration baselineProjectSpec ]
