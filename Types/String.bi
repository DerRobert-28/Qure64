$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$LET QB64CC_TYPES_STRING=DEFINED

sub String.append(this$, value$)
	this$ = String.append(this$, value$)
end function

sub String.concat(this$ , value$)
	this$ = String.concat(this$, value$)
end sub

sub String.prepend(this$, value$)
	this$ = String.prepend(this$, value$)
end function

sub String.quote(this$)
	this$ = String.quote(this$)
end sub

sub String.replace(this$, index&, value$)
	this$ = String.replace(this$, index&, value$)
end sub

sub String.reverse(this$)
	this$ = String.reverse(this$)
end sub

sub String.toLower(this$)
	this$ = String.toLower(this$)
end sub

sub String.toUpper(this$)
	this$ = String.toUpper(this$)
end sub

sub String.trim(this$)
	this$ = String.trim(this$)
end sub

sub String.unquote(this$)
	this$ = String.unquote(this$)
end sub

function String.append$(this$, value$)
	String.append = this$ + value$
end function

function String.charAt$(this$, index&)
	dim index0&, length&
	length& = len(this$)
	index0& = index&
	while index0& < 0
		index0& = index0& + length&
	wend
	index0& = index0& mod length&
	String.charAt = mid$(this$, index0& + 1, 1)
end function

function String.concat$(this$, value$)
	String.concat = this$ + value$
end function

function String.concat2$(this$, first$, second$)
	String.concat2 = String.concat(String.concat(this$, first$), second$)
end function

function String.concat3$(this$, first$, second$, third$)
	String.concat3 = String.concat(String.concat2(this$, first$, second$), third$)
end function

function String.contains%%(this$, value$)
	String.contains = (instr(this$, value$) > 0)
end function

function String.EMPTY$()
	String.EMPTY = ""
end function

function String.endsWith%%(this$, value$)
	String.endsWith = (String.last(this$, len(value$)) = value$)
end function

function String.endsWithIgnoreCase%%(this$, value$)
	String.endsWithIgnoreCase = String.endsWith(String.toLower(this$), String.toLower(value$))
end function

function String.first$(this$, length&)
	String.first = left$(this$, length&)
end function

function String.firstOf$(this$)
	String.firstOf = String.first(this$, 1)
end function

function String.fromByte$(this%%)
	String.fromByte = String.trim(str$(this%%))
end function

function String.fromDouble$(this#)
	String.fromDouble = String.trim(str$(this#))
end function

function String.fromFloat$(this!)
	String.fromFloat = String.trim(str$(this!))
end function

function String.fromInt$(this&&)
	String.fromInt = String.trim(str$(this&&))
end function

function String.fromLong$(this&)
	String.fromLong = String.trim(str$(this&))
end function

function String.fromReal$(this##)
	String.fromReal = String.trim(str$(this##))
end function

function String.fromShort$(this%)
	String.fromShort = String.trim(str$(this%))
end function

function String.if$(this%%, first$, second$)
	if this%% then String.if = first$ else String.if = second$
end function

function String.indexOf&(this$, value$)
	String.indexOf = instr(this$, value$) - 1
end function

function String.isEmpty%(this$)
	String.isEmpty = (this$ = String.EMPTY)
end function

function String.lastIndexOf&(this$, value$)
	String.lastIndexOf = _instrrev(this$, value$) - 1
end function

function String.last$(this$, length&)
	String.last = right$(this$, length&)
end function

function String.lastOf$(this$)
	String.lastOf = String.last(this$, 1)
end function

function String.length&(this$)
 	String.length = len(this$)
end function

function String.of$(this$)
	dim result$
	result$ = space$(len(this$))
	mid$(result$, 1, len(this$)) = this$
	String.of = result$
end function

function String.prepend$(this$, value$)
	String.prepend = value$ + this$
end function

function String.quote$(this$)
	dim result$
	result$ = this$
	if String.firstOf(result$) <> chr$(34) then String.prepend result$, chr$(34)
	if String.lastOf(result$) <> chr$(34) then String.append result$, chr$(34)
	String.quote = result$
end function

function String.repeat$(this$, count&)
	dim each&, result$
	result$ = ""
	for each& = 1 to count&
		result$ = result$ + this$
	next
	String.repeat = result$
end function

function String.replace$(this$, index&, value$)
	dim index0&, length&, result$
	result$ = this$
	index0& = index&
	length& = String.length(this$)
	while index0& < 0
		index0& = index0& + length&
	wend
	index0& = index0& mod length&
	mid$(result$, index0& + 1, len(value$)) = value$
	String.replace = result$
end function

function String.reverse$(this$)
	dim result$, index&, length&
	result$ = ""
	length& = String.length(this$)
	for index& = 0 to length& - 1
		result$ = result$ + mid$(this$, length& - index&, 1)
	next
	String.reverse = result$
end function

function String.startsWith%(this$, value$)
	String.startsWith = (String.first(this$, len(value$)) = value$)
end function

function String.startsWithIgnoreCase%(this$, value$)
	String.startsWithIgnoreCase = String.startsWith(String.toLower(this$), String.toLower(value$))
end function

function String.subStr$(this$, index&, length&)
	dim index0&, length0&, length1&
	length0& = String.length(this$)
	index0& = index&
	while index0& < 0
		index0& = index0& + length0&
	wend
	index0& = index0& mod length0&
	length1& = length&
	if length1& < 0 then length1& = 0
	if length1& > length& then length1& = length&
	String.subStr = mid$(this$, index0& + 1, length1&)
end function

function String.subString$(this$, index&)
	dim index0&, length&
	index0& = index&
	length& = len(this$)
	while index0& < 0
		index0& = index0& + length&
	wend
	index0& = index0& mod length&
	String.subString = mid$(this$, index0& + 1)
end function

function String.toLower$(this$)
	String.toLower = lcase$(this$)
end function

function String.toUpper$(this$)
 	String.toUpper = ucase$(this$)
end function

function String.trim$(this$)
	String.trim = ltrim$(rtrim$(this$))
end function

function String.unquote$(this$)
	dim result$
	result$ = this$
	if String.firstOf(result$) = chr$(34) then result$ = String.subString(result$, 1)
	if String.lastOf(result$) = chr$(34) then result$ = String.first(result$, len(result$) - 1)
	String.unquote = result$
end function

$ENDIF
