$IF QURE64_CORE_MALLOC=UNDEFINED THEN
$LET QURE64_CORE_MALLOC=DEFINED

function malloc$(this as string, value as string)
	static as string mallocTable
	select case ltrim$(rtrim$(lcase$(this)))
		case "": malloc$ = ""
		case "delete": malloc = malloc.delete(mallocTable, value)
		case "get": malloc = malloc.get(mallocTable, value)
		case "put": malloc = malloc.put(mallocTable, value)
		case else: error 5
	end select
end function

function malloc.delete$(mallocTable$, value$)
	dim hashCode&, newTable$, size&, this$, thisHashCode&, thisValue$
	hashCode& = malloc.getHash(value$)
	if hashCode& then
		this$ = mallocTable$
		newTable$ = ""
		while len(this$)
			thisHashCode& = malloc.getHash(this$): this$ = mid$(this$, 5)
			size& = malloc.getHash(this$): this$ = mid$(this$, 5)
			thisValue$ = left$(this$, size&): this$ = mid$(this$, size& + 1)		
			if(thisHashCode& = hashCode&) then
				mallocTable$ = newTable$ + this$
				malloc.delete = mkl$(thisHashCode&)
				exit function
			endif
			newTable$ = newTable$ + malloc.valueOf(thisHashCode&, thisValue$)
		wend	
		malloc.delete = ""
		error 7
	else
		malloc.delete = ""
		error 5
	endif
end function

function malloc.getHash&(this$)
	malloc.getHash = cvl(left$(this$ + mkl$(0), 4))
end function

function malloc.hashCode&(dummy%)
	static hashTable$
	dim a%, b%, c%, d%, i&, hashCode$
	if dummy% then
		randomize timer
		do
			a% = int(rnd * 256): b% = int(rnd * 256)	
			c% = int(rnd * 256): d% = int(rnd * 256)	
			hashCode$ = chr$(a%) + chr$(b%) + chr$(c%) + chr$(d%)
			for i& = 1 to len(hashTable$) step 4
				if mid$(hashTable$, i&, 4) = hashCode$ then
					hashCode$ = mkl$(0)
					exit for
				endif
			next
		loop while hashCode$ = mkl$(0)
		hashTable$ = hashTable$ + hashCode$
		malloc.hashCode = cvl(hashCode$)
	elseif len(hashTable$) < 4 then
		hashCode$ = left$(hashTable$ + mkl$(0), 4)
		malloc.hashCode = cvl(hashCode$)
	else
		hashCode$ = right$(hashTable$, 4)
		malloc.hashCode = cvl(hashCode$)
	endif
end function

function malloc.get$(mallocTable$, value$)
	dim hashCode&, size&, this$, thisHashCode&, thisValue$
	hashCode& = malloc.getHash(value$)
	if hashCode& then
		this$ = mallocTable$
		while len(this$)
			thisHashCode& = malloc.getHash(this$): this$ = mid$(this$, 5)
			size& = malloc.getHash(this$): this$ = mid$(this$, 5)
			thisValue$ = left$(this$, size&): this$ = mid$(this$, size& + 1)
			if(thisHashCode& = hashCode&) then
				malloc.get = thisValue$
				exit function
			endif
		wend
		malloc.get = ""
		error 7
	else
		malloc.get = ""
		error 5
	endif
end function

function malloc.put$(mallocTable$, value$)
	dim i&, size&, this$, thisHashCode&, thisValue$
	this$ = mallocTable$
	while len(this$)
		thisHashCode& = malloc.getHash(this$): this$ = mid$(this$, 5)
		size& = malloc.getHash(this$): this$ = mid$(this$, 5)
		thisValue$ = left$(this$, size&): this$ = mid$(this$, size& + 1)
		if(thisValue$ = value$) then
			malloc.put = mkl$(thisHashCode&)
			exit function
		endif
	wend
	mallocTable$ = mallocTable$ + malloc.valueOf(malloc.hashCode(1), value$)
	malloc.put = mkl$(malloc.hashCode(0))
end function

function malloc.valueOf$(hashCode&, value$)
	malloc.valueOf = mkl$(hashCode&) + mkl$(len(value$)) + value$
end function

$ENDIF
