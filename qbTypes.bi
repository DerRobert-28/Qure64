$IF QBTYPES=UNDEFINED THEN
$LET QBTYPES=DEFINED

$IF QBCC=UNDEFINED THEN
$ERROR expected:'qbcc.bi'
$ENDIF

'$INCLUDE:'qbTypes/Boolean.bi'
'$INCLUDE:'qbTypes/Byte.bi'
'$INCLUDE:'qbTypes/Bytes.bi'
'$INCLUDE:'qbTypes/Char.bi'
'$INCLUDE:'qbTypes/Chars.bi'
'$INCLUDE:'qbTypes/Double.bi'
'$INCLUDE:'qbTypes/Doubles.bi'
'$INCLUDE:'qbTypes/Float.bi'
'$INCLUDE:'qbTypes/Floats.bi'
'$INCLUDE:'qbTypes/Integer.bi'
'$INCLUDE:'qbTypes/Integers.bi'
'$INCLUDE:'qbTypes/Long.bi'
'$INCLUDE:'qbTypes/Longs.bi'
'$INCLUDE:'qbTypes/Real.bi'
'$INCLUDE:'qbTypes/Reals.bi'
'$INCLUDE:'qbTypes/Short.bi'
'$INCLUDE:'qbTypes/Shorts.bi'
'$INCLUDE:'qbTypes/String.bi'
'$INCLUDE:'qbTypes/Strings.bi'

$ENDIF
