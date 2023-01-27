$IF QB64CC_TYPES_DOUBLES=UNDEFINED THEN
$LET QB64CC_TYPES_DOUBLES=DEFINED

$IF QB64CC_TYPES=UNDEFINED THEN
$ERROR expected: 'qb64cc.bi'
$ENDIF

'$INCLUDE:'Doubles\areEqual.bi'
'$INCLUDE:'Doubles\contain.bi'
'$INCLUDE:'Doubles\indexOf.bi'
'$INCLUDE:'Doubles\lastIndexOf.bi'

$ENDIF
