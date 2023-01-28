$IF QB64CC_UTILS_MATH=UNDEFINED THEN
$LET QB64CC_UTILS_MATH=DEFINED

sub Math.addMemoized(this$, value##)
	this$ = Math.addMemoized(this$, value##)
end function

sub Math.addMemoizedInt(this$, value&&)
	this$ = Math.addMemoizedInt(this$, value&&)
end function

function Math.Abs##(this##)
	Math.Abs = abs(this##)
end function

function Math.addMemoized$(this$, value##)
	if Math.isMemoized(this$, value##) then
		Math.addMemoized = this$
	else
		Math.addMemoized = this$ + _mk$(_float, value##)
	endif
end function

function Math.addMemoizedInt$(this$, value&&)
	if Math.isMemoizedInt(this$, value&&) then
		Math.addMemoizedInt = this$
	else
		Math.addMemoizedInt = this$ + _mk$(_integer64, value&&)
	endif
end function

function Math.CbRt##(this##)
	Math.CbRt = Math.Sign(this##) * Math.Pow(Math.Abs(this##), Math.Reciprocal(3##))
end function

function Math.Cos##(this##)
	Math.Cos = cos(this##)
end function

function Math.Cube##(this##)
	Math.Cube = this## * this## * this##
end function

function Math.E##()
	Math.E = exp(1##)
end function

function Math.Factorial##(this%)
	if this% < 0 then
		error 5	
	elseif this% = 0 then
		Math.Factorial = 1##
	else
		Math.Factorial = this% * Math.Factorial(this% - 1)
	endif
end function

function Math.If##(this%%, first##, second##)
	if this%% then
		Math.If = first##
	else
		MAth.If = second##
	endif
end function

function Math.IFactorial~&&(this%)
	if this% < 0 then
		error 5
	elseif this% = 0 then
		Math.IFactorial = 1~&&
	else
		Math.IFactorial = this% * Math.IFactorial(this% - 1)
	endif
end function

function Math.isMemoized%%(this$, value##)
	dim index&, toString$
	if len(this$) = 0 then
		Math.isMemoized = FALSE
	else
		toString$ = _mk$(_float, value##)
		index& = instr(1, this$, toString$)
		Math.isMemoized = (index& mod len(toString$)) = 1
	endif
end function

function Math.isMemoizedInt%%(this$, value&&)
	dim index&, toString$
	if len(this$) = 0 then
		Math.isMemoizedInt = FALSE
	else
		toString$ = _mk$(_integer64, value&&)
		index& = instr(1, this$, toString$)
		Math.isMemoizedInt = (index& mod len(toString$)) = 1
	endif
end function

function Math.isPrime%%(this&&)
	static primeList$
	dim each&&, counter&&
	if Math.isMemoizedInt(primeList$, this&&) then
		Math.isPrime = TRUE
		exit function
	endif
	counter&& = 0
	for each&& = 2 to this&&
		if Math.Remainder(this&&, each&&) = 0 then counter&& = counter&& + 1
	next
	if (counter&& = 1) then Math.addMemoizedInt primeList$, this&&
	Math.isPrime = (counter&& = 1)
end function

function Math.Max##(first##, second##)
	Math.Max = Math.If(first## > second, first##, second##)
end function

function Math.Max2##(first##, second##, third##)
	Math.Max2 = Math.Max(Math.Max(first##, second##), third##)
end function

function Math.Min##(first##, second##)
	Math.Min = Math.If(first## < second, first##, second##)
end function

function Math.Min2##(first##, second##, third##)
	Math.Min2 = Math.Min(Math.Min(first##, second##), third##)
end function

function Math.PI##()
	Math.PI = 4## * atn(1##)
end function

function Math.Pow##(basis##, exponent##)
	Math.Pow = basis## ^ exponent##
end function

function Math.Reciprocal##(this##)
	Math.Reciprocal = 1## / this##
end function

function Math.Remainder&&(first&&, second&&)
	Math.Remainder = first&& mod second&&
end function

function Math.Sign%(this##)
	Math.Sign = sgn(this##)
end function

function Math.Sin##(this##)
	Math.Sin = sin(this##)
end function

function Math.SqRt##(this##)
	Math.SqRt = sqr(this##)
end function

function Math.Square##(this##)
	Math.Square = this## * this##
end function

$ENDIF
