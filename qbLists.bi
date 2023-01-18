$IF QBLISTS=UNDEFINED THEN
$LET QBLISTS=DEFINED

$IF QBCC=UNDEFINED THEN
$ERROR expected:'qbcc.bi'
$ENDIF

'$INCLUDE:'qbLists/TList.bi'

'$INCLUDE:'qbLists/LongList.bi'
'$INCLUDE:'qbLists/StringList.bi'

$ENDIF
