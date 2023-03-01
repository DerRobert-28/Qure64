$IF QURE64_CORE=UNDEFINED THEN
$LET QURE64_CORE=DEFINED

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

'================]  MAIN  [================'

argc% = ubound(argv$)
for each% = 0 TO 255: _mapunicode each% to each%: next
for each% = 1 to argc%: argv$(each% - 1) = command$(each%): next
system Main%(argc%, argv$())

$ENDIF
