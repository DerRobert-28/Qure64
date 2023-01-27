$IF QB64CC_TYPES_INTEGERS=UNDEFINED THEN
$LET QB64CC_TYPES_INTEGERS=DEFINED

$IF QB64CC_TYPES=UNDEFINED THEN
$ERROR expected: 'qb64cc.bi'
$ENDIF

'$INCLUDE:'Integers\areEqual.bi'
'$INCLUDE:'Integers\contain.bi'
'$INCLUDE:'Integers\indexOf.bi'
'$INCLUDE:'Integers\lastIndexOf.bi'

$ENDIF
