$IF QB64CC_LISTS=UNDEFINED THEN
$LET QB64CC_LISTS=DEFINED

$IF QB64CC_SYSTEM=UNDEFINED THEN
$ERROR expected:'System.bi'
$ENDIF

'$INCLUDE:'Lists/TList.bi'

'$INCLUDE:'Lists/LongList.bi'
'$INCLUDE:'Lists/StringList.bi'

$ENDIF
