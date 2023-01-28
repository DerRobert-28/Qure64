$IF QURE64_CORE=UNDEFINED THEN
$LET QURE64_CORE=DEFINED

Options:
	_blink off
	option base 0
	option _explicit
	option _explicitarray

Declares:
	declare function Main%(argc as integer, argv() as string)

Variables:
	dim shared IOresult as integer
	dim argc as integer
	dim argv(-1 to _commandcount - 1) as string
	dim each as integer

Begin:
	argc = ubound(argv)
	for each = 0 TO 255: _mapunicode each to each: next
	for each = 1 to argc: argv(each - 1) = command$(each): next
	system Main(argc, argv())
End

OnError:
	IOresult = err
resume next

'$INCLUDE:'core/catch.bi'
'$INCLUDE:'core/false.bi'
'$INCLUDE:'core/finally.bi'
'$INCLUDE:'core/throw.bi'
'$INCLUDE:'core/true.bi'
'$INCLUDE:'core/try.bi'

$ENDIF
