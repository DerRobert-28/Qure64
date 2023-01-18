$IF QBCC_EXCEPTION_TOSTRING=UNDEFINED THEN
$LET QBCC_EXCEPTION_TOSTRING=DEFINED

$IF QBCC=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

function Exception.toString$(this as Exceprtion)

end function

$ENDIF
