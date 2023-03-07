$IF QURE64_CORE_MALLOC=UNDEFINED THEN
$LET QURE64_CORE_MALLOC=DEFINED

function malloc$(this$, value$)
	static mallocTable$
	select case ltrim$(rtrim$(lcase$(this$)))
		case "": malloc = ""
		case "delete": malloc = malloc.delete(malloc.authId(0), mallocTable$, value$)
		case "get": malloc = malloc.get(malloc.authId(0), mallocTable$, value$)
		case "put": malloc = malloc.put(malloc.authId(0), mallocTable$, value$)
		case else: error 5
	end select
end function

function malloc.authId&(compare&)
	static authId&
	dim a%, b%, c%, d%
	if compare& then
		malloc.authId = (authId& = compare&)
	else
		randomize timer
		while authId& = 0
			a% = int(rnd * 256): b% = int(rnd * 256)	
			c% = int(rnd * 256): d% = int(rnd * 256)	
			authId& = cvl(chr$(a%) + chr$(b%) + chr$(c%) + chr$(d%))
		wend
		malloc.authId = authId&
	endif
end function

function malloc.delete$(authId&, mallocTable$, value$)	
	dim hashCode&, newTable$, size&, this$, thisHashCode&, thisValue$
	if malloc.authId&(authId&) then
		hashCode& = malloc.getHash(authId&, value$)
		if hashCode& then
			this$ = mallocTable$
			newTable$ = ""
			while len(this$)
				thisHashCode& = malloc.getHash(authId&, this$): this$ = mid$(this$, 5)
				size& = malloc.getHash(authId&, this$): this$ = mid$(this$, 5)
				thisValue$ = left$(this$, size&): this$ = mid$(this$, size& + 1)		
				if(thisHashCode& = hashCode&) then
					mallocTable$ = newTable$ + this$
					malloc.delete = mkl$(thisHashCode&)
					exit function
				endif
				newTable$ = newTable$ + malloc.valueOf(authId&, thisHashCode&, thisValue$)
			wend	
			malloc.delete = ""
			error 7
		else
			malloc.delete = ""
			error 5
		endif
	else
		malloc.delete = ""
		error 5
	endif
end function

function malloc.getHash&(authId&, this$)
	if malloc.authId(authId&) then
		malloc.getHash = cvl(left$(this$ + mkl$(0), 4))
	else
		malloc.getHash = 0
		error 5
	endif
end function

function malloc.hashCode&(authId&, kind%)
	static hashTable$
	dim a%, b%, c%, d%, i&, hashCode$
	if malloc.authId(authId&) then
		if kind% then
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
	else
		malloc.hashCode = 0
		error 5
	endif
end function

function malloc.get$(authId&, mallocTable$, value$)
	dim hashCode&, size&, this$, thisHashCode&, thisValue$
	if malloc.authId(authId&) then
		hashCode& = malloc.getHash(authId&, value$)
		if hashCode& then
			this$ = mallocTable$
			while len(this$)
				thisHashCode& = malloc.getHash(authId&, this$): this$ = mid$(this$, 5)
				size& = malloc.getHash(authId&, this$): this$ = mid$(this$, 5)
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
	else
		malloc.get = ""
		error 5
	endif
end function

function malloc.put$(authId&, mallocTable$, value$)
	dim i&, size&, this$, thisHashCode&, thisValue$
	if malloc.authId(authId&) then
		this$ = mallocTable$
		while len(this$)
			thisHashCode& = malloc.getHash(authId&, this$): this$ = mid$(this$, 5)
			size& = malloc.getHash(authId&, this$): this$ = mid$(this$, 5)
			thisValue$ = left$(this$, size&): this$ = mid$(this$, size& + 1)
			if(thisValue$ = value$) then
				malloc.put = mkl$(thisHashCode&)
				exit function
			endif
		wend
		mallocTable$ = mallocTable$ + malloc.valueOf(authId&, malloc.hashCode(authId&, 1), value$)
		malloc.put = mkl$(malloc.hashCode(authId&, 0))
	else
		malloc.put = ""
		error 5
	endif
end function

function malloc.valueOf$(authId&, hashCode&, value$)
	if malloc.authId(authId&) then
		malloc.valueOf = mkl$(hashCode&) + mkl$(len(value$)) + value$
	else
		malloc.valueOf = ""
		error 5
	endif
end function

$ENDIF
