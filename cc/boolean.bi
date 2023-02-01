$IF QURE64_CC_BOOLEAN=UNDEFINED THEN
$LET QURE64_CC_BOOLEAN=DEFINED

$IF QURE64_CC=UNDEFINED THEN
$ERROR Expected: 'cc.bi'
$ENDIF

'================]  FUNCTION  [================'

function False%()
	False = 0
end function

function True%()
	True = not(False)
end function

$ENDIF
