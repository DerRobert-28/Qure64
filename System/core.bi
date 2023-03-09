$IF QURE64_SYSTEM_CORE=DEFINED THEN
$ERROR 'core.bi' is required before 'System.bi'
$ENDIF

$IF QURE64_SYSTEM_CORE=UNDEFINED THEN
$LET QURE64_SYSTEM_CORE=DEFINED

'================]  DECLARE  [================'

declare function Main%(argc%, argv$())

'================]  OPTION  [================'

_blink off
option base 0
option _explicit
option _explicitarray

'================]  DIM  [================'

dim argc%
dim argv$(-1 to _commandcount - 1)
dim each%
dim LastException%

'================]  MAIN  [================'

argc% = ubound(argv$)
for each% = 0 TO 255: _mapunicode each% to each%: next
for each% = 1 to argc%: argv$(each% - 1) = command$(each%): next
call malloc("init", "")
system Main%(argc%, argv$())

'================]  EXCEPT  [================'

ExceptionHandler:
	LastException% = err
resume next

'================]  INCLUDE  [================'

'$INCLUDE:'./core/random.bi'

'$INCLUDE:'./core/malloc.bi'

'$INCLUDE:'./core/delete.bi'
'$INCLUDE:'./core/new.bi'
'$INCLUDE:'./core/valueOf.bi'

'$INCLUDE:'./core/try.bi'
'$INCLUDE:'./core/catch.bi'
'$INCLUDE:'./core/finally.bi'

$ENDIF
