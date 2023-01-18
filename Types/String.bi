$IF QBCC_TYPES_STRING=UNDEFINED THEN
$LET QBCC_TYPES_STRING=DEFINED

$IF QBCC_TYPES=UNDEFINED THEN
$ERROR expected: 'qbcc/System.bi'
$ENDIF

'$INCLUDE:'String\append.bi'
'$INCLUDE:'String\charAt.bi'
'$INCLUDE:'String\concat.bi'
'$INCLUDE:'String\contains.bi'
'$INCLUDE:'String\EMPTY.bi'
'$INCLUDE:'String\endsWith.bi'
'$INCLUDE:'String\endsWithIgnoreCase.bi'
'$INCLUDE:'String\firstOf.bi'
'$INCLUDE:'String\fromByte.bi'
'$INCLUDE:'String\fromDouble.bi'
'$INCLUDE:'String\fromFloat.bi'
'$INCLUDE:'String\fromInt.bi'
'$INCLUDE:'String\fromLong.bi'
'$INCLUDE:'String\fromReal.bi'
'$INCLUDE:'String\fromShort.bi'
'$INCLUDE:'String\if.bi'
'$INCLUDE:'String\indexOf.bi'
'$INCLUDE:'String\isEmpty.bi'
'$INCLUDE:'String\lastOf.bi'
'$INCLUDE:'String\length.bi'
'$INCLUDE:'String\of.bi'
'$INCLUDE:'String\prepend.bi'
'$INCLUDE:'String\quote.bi'
'$INCLUDE:'String\repeat.bi'
'$INCLUDE:'String\replace.bi'
'$INCLUDE:'String\reverse.bi'
'$INCLUDE:'String\startsWith.bi'
'$INCLUDE:'String\startsWithIgnoreCase.bi'
'$INCLUDE:'String\subString.bi'
'$INCLUDE:'String\toLower.bi'
'$INCLUDE:'String\toUpper.bi'
'$INCLUDE:'String\trim.bi'
'$INCLUDE:'String\unQuote.bi'

$ENDIF
