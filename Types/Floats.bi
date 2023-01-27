$IF QB64CC_TYPES_FLOATS=UNDEFINED THEN
$LET QB64CC_TYPES_FLOATS=DEFINED

$IF QB64CC_TYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Floats\areEqual.bi'
'$INCLUDE:'Floats\contain.bi'
'$INCLUDE:'Floats\indexOf.bi'
'$INCLUDE:'Floats\lastIndexOf.bi'

$ENDIF
