$IF QB64CC_UTILS_MATH_ISPRIME=UNDEFINED THEN
$LET QB64CC_UTILS_MATH_ISPRIME=DEFINED

$IF QB64CC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

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

$ENDIF
