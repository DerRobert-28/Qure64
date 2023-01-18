$IF QBCC_TYPES_CHAR=UNDEFINED THEN
$LET QBCC_TYPES_CHAR=DEFINED

$IF QBCC_TYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Char\ACCENT.bi'
'$INCLUDE:'Char\APOSTROPHE.bi'
'$INCLUDE:'Char\AT.bi'
'$INCLUDE:'Char\EIGHT.bi'
'$INCLUDE:'Char\FIVE.bi'
'$INCLUDE:'Char\FOUR.bi'
'$INCLUDE:'Char\from.bi'
'$INCLUDE:'Char\if.bi'
'$INCLUDE:'Char\NEWLINE.bi'
'$INCLUDE:'Char\NINE.bi'
'$INCLUDE:'Char\NULL.bi'
'$INCLUDE:'Char\of.bi'
'$INCLUDE:'Char\ONE.bi'
'$INCLUDE:'Char\QUOTE.bi'
'$INCLUDE:'Char\SEVEN.bi'
'$INCLUDE:'Char\SIX.bi'
'$INCLUDE:'Char\SPACE.bi'
'$INCLUDE:'Char\THREE.bi'
'$INCLUDE:'Char\toString.bi'
'$INCLUDE:'Char\TWO.bi'
'$INCLUDE:'Char\valueOf.bi'
'$INCLUDE:'Char\ZERO.bi'

$ENDIF
