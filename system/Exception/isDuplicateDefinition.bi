$IF QBCC_EXCEPTION_ISDUPLICATEDEFINITION=UNDEFINED THEN
$LET QBCC_EXCEPTION_ISDUPLICATEDEFINITION=DEFINED

$IF QBCC_EXCEPTION=UNDEFINED THEN
$ERROR expected: 'Exception.bi'
$ENDIF

function Exception.isDuplicateDefinition%%()
	Exception.isDuplicateDefinition = Exception.is(10)
end function

$ENDIF
