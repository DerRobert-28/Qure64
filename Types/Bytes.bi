$IF QB64CC_TYPES_BYTES=UNDEFINED THEN
$LET QB64CC_TYPES_BYTES=DEFINED

$IF QB64CC_TYPES=UNDEFINED THEN
$ERROR expected: 'qb64cc.bi'
$ENDIF

'$INCLUDE:'Bytes\areEqual.bi'
'$INCLUDE:'Bytes\contain.bi'
'$INCLUDE:'Bytes\indexOf.bi'
'$INCLUDE:'Bytes\lastIndexOf.bi'

$ENDIF
