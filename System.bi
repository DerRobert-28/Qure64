$IF QB64CC_SYSTEM=UNDEFINED THEN
$LET QB64CC_SYSTEM=DEFINED

Options:
	_blink off
	option base 0
	option _explicit
	option _explicitarray

Declares:
	declare function False%()
	declare function True%()
	declare sub Catch(this%)
	declare sub Finally()
	declare sub Throw(this%)
	declare sub Try()
	'****************************************
	'**                                    **
	'**  This function has to be defined:  **
	'**                                    **
	'****************************************
	declare function Main%(argc%, argv$())

Variables:
	dim argc%, argv$(-1 to _commandcount - 1), each%
	dim LastErrorCode%, LastExceptionCode%, LastExceptionMessage$

Begin:
	argc% = ubound(argv$)
	for each% = 0 TO 255: _mapunicode each% to each%: next
	for each% = 1 to argc%: argv$(each% - 1) = command$(each%): next
	system Main%(argc%, argv$())

HandleException:
	LastErrorCode% = err
	LastExceptionCode% = err
	LastExceptionMessage$ = _errormessage$
	resume next
end

'$INCLUDE:'System/Color.bi'
'$INCLUDE:'System/Console.bi'
'$INCLUDE:'System/Exception.bi'

function False%()
	False = 0
end function

function True%()
	True = not False
end function

sub Catch(this%)
	shared LastExceptionCode%
	this% = LastExceptionCode%
end sub

sub Finally()
	on error goto 0
end sub

sub Throw(this%)
	error this%
end sub

sub Try()
	on error goto HandleException
end sub

$ENDIF
