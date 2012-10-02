"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: transactions
"
transact: aBlock
	"On GemStone, we want to optionally abort before command execution and commit after 
	 common execution. Other plaforms don't need to do anything special.
	 Returning out of block, skips commit."
	
	aBlock value
