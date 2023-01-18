$IF QBTYPES_BYTES_AREEQUAL=UNDEFINED THEN
$LET QBTYPES_BYTES_AREEQUAL=DEFINED

$IF QBTYPES_BYTES=UNDEFINED THEN
$ERROR expected: 'Bytes.bi'
$ENDIF

function Bytes.areEqual%%(this%%, value%%)
	Bytes.areEqual = (this%% = value%%)
end function

$ENDIF
