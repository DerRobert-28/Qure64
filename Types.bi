$IF QB_TYPES=UNDEFINED THEN
$LET QB_TYPES=DEFINED

$IF QBCC_SYSTEM=UNDEFINED THEN
$ERROR expected:'System.bi'
$ENDIF

'$INCLUDE:'Types/Boolean.bi'
'$INCLUDE:'Types/Byte.bi'
'$INCLUDE:'Types/Bytes.bi'
'$INCLUDE:'Types/Char.bi'
'$INCLUDE:'Types/Chars.bi'
'$INCLUDE:'Types/Double.bi'
'$INCLUDE:'Types/Doubles.bi'
'$INCLUDE:'Types/Float.bi'
'$INCLUDE:'Types/Floats.bi'
'$INCLUDE:'Types/Integer.bi'
'$INCLUDE:'Types/Integers.bi'
'$INCLUDE:'Types/Long.bi'
'$INCLUDE:'Types/Longs.bi'
'$INCLUDE:'Types/Real.bi'
'$INCLUDE:'Types/Reals.bi'
'$INCLUDE:'Types/Short.bi'
'$INCLUDE:'Types/Shorts.bi'
'$INCLUDE:'Types/String.bi'
'$INCLUDE:'Types/Strings.bi'

$ENDIF
