$IF QB64CC_TYPES_SHORTS=UNDEFINED THEN
$LET QB64CC_TYPES_SHORTS=DEFINED

$IF QB64CC_TYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Shorts\areEqual.bi'
'$INCLUDE:'Shorts\contain.bi'
'$INCLUDE:'Shorts\indexOf.bi'
'$INCLUDE:'Shorts\lastIndexOf.bi'

$ENDIF
