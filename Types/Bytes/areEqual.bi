$IF QBCC_TYPES_BYTES_AREEQUAL=UNDEFINED THEN
$LET QBCC_TYPES_BYTES_AREEQUAL=DEFINED

$IF QBCC_TYPES_BYTES=UNDEFINED THEN
$ERROR expected: 'Bytes.bi'
$ENDIF

function Bytes.areEqual%%(this%%, value%%)
	Bytes.areEqual = (this%% = value%%)
end function

$ENDIF
