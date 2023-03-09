$IF QURE64_SYSTEM_CORE=UNDEFINED THEN
$ERROR 'malloc.bi' requires 'core.bi'
$ENDIF

$IF QURE64_SYSTEM_CORE_RANDOM=UNDEFINED THEN
$ERROR 'malloc.bi' requires 'random.bi'
$ENDIF

$IF QURE64_SYSTEM_CORE_MALLOC=UNDEFINED THEN
$LET QURE64_SYSTEM_CORE_MALLOC=DEFINED

'================]  PUBLIC  [================'

function malloc$(this$, value$)
	static mallocAuthId&, mallocTable$
	select case ltrim$(rtrim$(lcase$(this$)))
		case ""
			malloc = mkl$(0)
		case "delete"
			malloc = malloc.service.delete(mallocAuthId&, mallocTable$, value$)
		case "get"
			malloc = malloc.service.get(mallocAuthId&, mallocTable$, value$)
		case "init"
			while mallocAuthId& = 0
				mallocAuthId& = malloc.service.authId(core.random.long(0))
			wend
			malloc = mkl$(0)
		case "put"
			malloc = malloc.service.put(mallocAuthId&, mallocTable$, value$)
		case else
			malloc = ""
			error 5
	end select
end function

sub malloc(this$, value$)
	dim dummy$
	dummy$ = malloc(this$, value$)
end sub

'================]  PRIVATE  [================'

function malloc.service.authId&(compare&)
	static authId&
	if authId& then
		malloc.service.authId = (authId& = compare&)
	elseif compare& then
		authId& = core.random.long(0)
		malloc.service.authId = authId&
	else
		malloc.service.authId = 0
		error 5
	endif
end function

function malloc.service.delete$(authId&, mallocTable$, value$)	
	dim hashCode&, newTable$, size&, this$, thisHashCode&, thisValue$
	if malloc.service.authId(authId&) then
		hashCode& = malloc.service.getHashCode(authId&, value$)
		if hashCode& then
			this$ = mallocTable$
			newTable$ = ""
			while len(this$)
				thisHashCode& = malloc.service.getHashCode(authId&, this$): this$ = mid$(this$, 5)
				size& = malloc.service.getHashCode(authId&, this$): this$ = mid$(this$, 5)
				thisValue$ = left$(this$, size&): this$ = mid$(this$, size& + 1)		
				if(thisHashCode& = hashCode&) then
					mallocTable$ = newTable$ + this$
					malloc.service.delete = mkl$(thisHashCode&)
					exit function
				endif
				newTable$ = newTable$ + malloc.service.valueOf(authId&, thisHashCode&, thisValue$)
			wend	
			malloc.service.delete = ""
			error 7
		else
			malloc.service.delete = ""
			error 5
		endif
	else
		malloc.service.delete = ""
		error 5
	endif
end function

function malloc.service.getHashCode&(authId&, this$)
	if malloc.service.authId(authId&) then
		malloc.service.getHashCode = cvl(left$(this$ + mkl$(0), 4))
	else
		malloc.service.getHashCode = 0
		error 5
	endif
end function

function malloc.service.hashCode&(authId&, kind%)
	static hashTable$
	dim a%, b%, c%, d%, i&, hashCode$
	if malloc.service.authId(authId&) then
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
			malloc.service.hashCode = cvl(hashCode$)
		elseif len(hashTable$) < 4 then
			hashCode$ = left$(hashTable$ + mkl$(0), 4)
			malloc.service.hashCode = cvl(hashCode$)
		else
			hashCode$ = right$(hashTable$, 4)
			malloc.service.hashCode = cvl(hashCode$)
		endif
	else
		malloc.service.hashCode = 0
		error 5
	endif
end function

function malloc.service.get$(authId&, mallocTable$, value$)
	dim hashCode&, size&, this$, thisHashCode&, thisValue$
	if malloc.service.authId(authId&) then
		hashCode& = malloc.service.getHashCode(authId&, value$)
		if hashCode& then
			this$ = mallocTable$
			while len(this$)
				thisHashCode& = malloc.service.getHashCode(authId&, this$): this$ = mid$(this$, 5)
				size& = malloc.service.getHashCode(authId&, this$): this$ = mid$(this$, 5)
				thisValue$ = left$(this$, size&): this$ = mid$(this$, size& + 1)
				if(thisHashCode& = hashCode&) then
					malloc.service.get = thisValue$
					exit function
				endif
			wend
			malloc.service.get = ""
			error 7
		else
			malloc.service.get = ""
			error 5
		endif
	else
		malloc.service.get = ""
		error 5
	endif
end function

function malloc.service.put$(authId&, mallocTable$, value$)
	dim i&, size&, this$, thisHashCode&, thisValue$
	if malloc.service.authId(authId&) then
		this$ = mallocTable$
		while len(this$)
			thisHashCode& = malloc.service.getHashCode(authId&, this$): this$ = mid$(this$, 5)
			size& = malloc.service.getHashCode(authId&, this$): this$ = mid$(this$, 5)
			thisValue$ = left$(this$, size&): this$ = mid$(this$, size& + 1)
			if(thisValue$ = value$) then
				malloc.service.put = mkl$(thisHashCode&)
				exit function
			endif
		wend
		mallocTable$ = mallocTable$ + malloc.service.valueOf(authId&, malloc.service.hashCode(authId&, 1), value$)
		malloc.service.put = mkl$(malloc.service.hashCode(authId&, 0))
	else
		malloc.service.put = ""
		error 5
	endif
end function

function malloc.service.valueOf$(authId&, hashCode&, value$)
	if malloc.service.authId(authId&) then
		malloc.service.valueOf = mkl$(hashCode&) + mkl$(len(value$)) + value$
	else
		malloc.service.valueOf = ""
		error 5
	endif
end function

$ENDIF
