$IF QBCC_UTILS_MATH=UNDEFINED THEN
$LET QBCC_UTILS_MATH=DEFINED

$IF QBCC_UTILS=UNDEFINED THEN
$ERROR expected: 'Utils.bi'
$ENDIF

'$INCLUDE:'Math/Abs.bi'
'$INCLUDE:'Math/addCurried.bi'
'$INCLUDE:'Math/addCurriedInt.bi'
'$INCLUDE:'Math/CbRt.bi'
'$INCLUDE:'Math/Cos.bi'
'$INCLUDE:'Math/Cube.bi'
'$INCLUDE:'Math/E.bi'
'$INCLUDE:'Math/Factorial.bi'
'$INCLUDE:'Math/IFactorial.bi'
'$INCLUDE:'Math/isCurried.bi'
'$INCLUDE:'Math/isCurriedInt.bi'
'$INCLUDE:'Math/isPrime.bi'
'$INCLUDE:'Math/PI.bi'
'$INCLUDE:'Math/Pow.bi'
'$INCLUDE:'Math/Reciprocal.bi'
'$INCLUDE:'Math/Remainder.bi'
'$INCLUDE:'Math/Sign.bi'
'$INCLUDE:'Math/Sin.bi'
'$INCLUDE:'Math/SqRt.bi'
'$INCLUDE:'Math/Square.bi'

$ENDIF
