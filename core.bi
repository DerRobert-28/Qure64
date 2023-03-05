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
dim LASTEXCEPTION%

'================]  REDIM  [================'

redim OBJECTTABLE$(0)

'================]  MAIN  [================'

argc% = ubound(argv$)
for each% = 0 TO 255: _mapunicode each% to each%: next
for each% = 1 to argc%: argv$(each% - 1) = command$(each%): next
system Main%(argc%, argv$())

'================]  EXCEPT  [================'

EXCEPTIONHANDLER:
	LASTEXCEPTION% = err
resume next

'================]  FUNCTION  [================'

function catch%()
	shared LASTEXCEPTION%
	catch% = LASTEXCEPTION%
end function

function malloc&(mallocTable$(), item$)
	dim currentItem&, each&, lastItem&
	lastItem& = ubound(mallocTable$) + 1
	currentItem& = lastItem&
	for each& = 1 to lastItem& - 1
		if mallocTable$(each&) = item$ then
			currentItem& = each&
			exit for
		endif
	next
	if(currentItem& = lastItem&) then redim _preserve mallocTable$(currentItem&)
	mallocTable$(currentItem&) = item$
	malloc& = currentItem&
end function

function new&(this$)
	shared OBJECTTABLE$()
	new = malloc(OBJECTTABLE$(), this$)
end function

'================]  SUB  [================'

sub catch(this%)
	shared LASTEXCEPTION%
	this% = LASTEXCEPTION%
end sub

sub finally()
	on error goto 0
end sub

sub try()
	on error goto EXCEPTIONHANDLER
end sub


$ENDIF
