$IF QBCC=UNDEFINED THEN
$LET QBCC=DEFINED

Options:
	_blink off
	option base 0
	option _explicit
	option _explicitarray

Declares:
	declare function new&(this$)
	declare function FALSE%%()
	declare function NULL&()
	declare function ref&(this as Object)
	declare function TRUE%%()
	declare sub catch(this$)
	declare sub finally()
	declare sub set(this as Object, reference&)
	declare sub throw(this$)
	declare sub try()
	'****************************************
	'**                                    **
	'**  This function has to be defined:  **
	'**                                    **
	'****************************************
	declare function Main%(argc%, argv$())

Variables:
	dim argc%, argv$(-1 to _commandcount - 1)
	dim each%
	dim LastErrorCode%, LastExceptionCode%, LastExceptionMessage$
	redim GlobalObjectTable$(0)

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

function new&(this$)
	shared GlobalObjectTable$()
	dim each&, index&, item$, lastItem&
	lastItem& = ubound(GlobalObjectTable$)
	index& = lastItem& + 1
	for each& = 1 to lastItem&
		item$ = GlobalObjectTable$(each&)
		if(item$ = "") or(item$ = this$) then
			index& = each&
			exit for
		endif
	next
	if(index& > lastItem&) then
		redim _preserve GlobalObjectTable$(1 to index&)
		GlobalObjectTable$(index&) = this$
	endif
	new = index&
end function

function ref&(this as Object)
	shared GlobalObjectTable$()
	if this.reference < 1 then
		ref = NULL
	elseif this.reference > ubound(GlobalObjectTable$) then
		ref = NULL
	else
		ref = this.reference
	endif
end function

function valueOf$(this as Object)
	shared GlobalObjectTable$()
 	if this.reference < 1 then
 		throw 9
	elseif this.reference > ubound(GlobalObjectTable$) then
		throw 9
	else
		valueOf = GlobalObjectTable$(this.reference)
	endif
end function

function NULL&()
	NULL = 0
end function

function FALSE%%()
	FALSE = 0
end function

function TRUE%%()
	TRUE = not FALSE
end function

sub catch(this$)
	shared LastExceptionMessage$
	this$ = LastExceptionMessage$
end sub

sub finally()
	on error goto 0
end sub

sub set(this as Object, reference&)
	this.reference = reference&
end sub

sub throw(this%)
	error this%
end sub

sub try()
	on error goto HandleException
end sub

'$INCLUDE:'system/Color.bi'
'$INCLUDE:'system/Console.bi'
'$INCLUDE:'system/Exception.bi'
'$INCLUDE:'system/Object.bi'

$ENDIF
