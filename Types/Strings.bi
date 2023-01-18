$IF QBTYPES_STRINGS=UNDEFINED THEN
$LET QBTYPES_STRINGS=DEFINED

$IF QBTYPES=UNDEFINED THEN
$ERROR expected: 'qbcc/System.bi'
$ENDIF

'$INCLUDE:'Strings/areEqual.bi'
'$INCLUDE:'Strings/areEqualIgnoreCase.bi'
'$INCLUDE:'Strings/contain.bi'
'$INCLUDE:'Strings/containIgnoreCase.bi'
'$INCLUDE:'Strings/indexOf.bi'
'$INCLUDE:'Strings/indexOfIgnoreCase.bi'
'$INCLUDE:'Strings/lastIndexOf.bi'
'$INCLUDE:'Strings/lastIndexOfIgnoreCase.bi'

$ENDIF
