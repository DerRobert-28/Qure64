$IF QBUTILS_MATH_PI=UNDEFINED THEN
$LET QBUTILS_MATH_PI=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.PI##()
	Math.PI = 4## * atn(1##)
	'Math.PI = _pi
end function

$ENDIF
