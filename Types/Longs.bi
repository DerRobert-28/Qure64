$IF QB64CC_TYPES_LONGS=UNDEFINED THEN
$LET QB64CC_TYPES_LONGS=DEFINED

$IF QB64CC_TYPES=UNDEFINED THEN
$ERROR expected: 'qb64cc.bi'
$ENDIF

'$INCLUDE:'Longs\areEqual.bi'
'$INCLUDE:'Longs\contain.bi'
'$INCLUDE:'Longs\indexOf.bi'
'$INCLUDE:'Longs\lastIndexOf.bi'

$ENDIF
