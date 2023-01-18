$IF QBCC_OBJECT=UNDEFINED THEN
$LET QBCC_OBJECT=DEFINED

$IF QBCC=UNDEFINED THEN
$ERROR expected: 'qbcc\system.bi'
$ENDIF

type Object
	reference as long
end type

$ENDIF
