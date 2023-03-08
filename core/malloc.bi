$IF QURE64_CORE=UNDEFINED THEN
$ERROR 'malloc.bi' requires 'core.bi'
$ENDIF

$IF QURE64_CORE_RANDOM=UNDEFINED THEN
$ERROR 'malloc.bi' requires 'random.bi'
$ENDIF

$IF QURE64_CORE_MALLOC=UNDEFINED THEN
$LET QURE64_CORE_MALLOC=DEFINED

function core.malloc$(this$, value$)
	static mallocAuthId&, mallocTable$
	while mallocAuthId& = 0
		mallocAuthId& = core.malloc.authId(core.random.long(0))
	wend
	select case ltrim$(rtrim$(lcase$(this$)))
		case "": core.malloc = ""
		case "delete": core.malloc = core.malloc.delete(mallocAuthId&, mallocTable$, value$)
		case "get": core.malloc = core.malloc.get(mallocAuthId&, mallocTable$, value$)
		case "put": core.malloc = core.malloc.put(mallocAuthId&, mallocTable$, value$)
		case else: error 5
	end select
end function

function core.malloc.authId&(compare&)
	static authId&
	if authId& then
		core.malloc.authId = (authId& = compare&)
	elseif compare& then
		authId& = core.random.long(0)
		core.malloc.authId = authId&
	else
		core.malloc.authId = 0
		error 5
	endif
end function

function core.malloc.delete$(authId&, mallocTable$, value$)	
	dim hashCode&, newTable$, size&, this$, thisHashCode&, thisValue$
	if core.malloc.authId&(authId&) then
		hashCode& = core.malloc.getHash(authId&, value$)
		if hashCode& then
			this$ = mallocTable$
			newTable$ = ""
			while len(this$)
				thisHashCode& = core.malloc.getHash(authId&, this$): this$ = mid$(this$, 5)
				size& = core.malloc.getHash(authId&, this$): this$ = mid$(this$, 5)
				thisValue$ = left$(this$, size&): this$ = mid$(this$, size& + 1)		
				if(thisHashCode& = hashCode&) then
					mallocTable$ = newTable$ + this$
					core.malloc.delete = mkl$(thisHashCode&)
					exit function
				endif
				newTable$ = newTable$ + core.malloc.valueOf(authId&, thisHashCode&, thisValue$)
			wend	
			core.malloc.delete = ""
			error 7
		else
			core.malloc.delete = ""
			error 5
		endif
	else
		core.malloc.delete = ""
		error 5
	endif
end function

function core.malloc.getHash&(authId&, this$)
	if core.malloc.authId(authId&) then
		core.malloc.getHash = cvl(left$(this$ + mkl$(0), 4))
	else
		core.malloc.getHash = 0
		error 5
	endif
end function

function core.malloc.hashCode&(authId&, kind%)
	static hashTable$
	dim a%, b%, c%, d%, i&, hashCode$
	if core.malloc.authId(authId&) then
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
			core.malloc.hashCode = cvl(hashCode$)
		elseif len(hashTable$) < 4 then
			hashCode$ = left$(hashTable$ + mkl$(0), 4)
			core.malloc.hashCode = cvl(hashCode$)
		else
			hashCode$ = right$(hashTable$, 4)
			core.malloc.hashCode = cvl(hashCode$)
		endif
	else
		core.malloc.hashCode = 0
		error 5
	endif
end function

function core.malloc.get$(authId&, mallocTable$, value$)
	dim hashCode&, size&, this$, thisHashCode&, thisValue$
	if core.malloc.authId(authId&) then
		hashCode& = core.malloc.getHash(authId&, value$)
		if hashCode& then
			this$ = mallocTable$
			while len(this$)
				thisHashCode& = core.malloc.getHash(authId&, this$): this$ = mid$(this$, 5)
				size& = core.malloc.getHash(authId&, this$): this$ = mid$(this$, 5)
				thisValue$ = left$(this$, size&): this$ = mid$(this$, size& + 1)
				if(thisHashCode& = hashCode&) then
					core.malloc.get = thisValue$
					exit function
				endif
			wend
			core.malloc.get = ""
			error 7
		else
			core.malloc.get = ""
			error 5
		endif
	else
		core.malloc.get = ""
		error 5
	endif
end function

function core.malloc.put$(authId&, mallocTable$, value$)
	dim i&, size&, this$, thisHashCode&, thisValue$
	if core.malloc.authId(authId&) then
		this$ = mallocTable$
		while len(this$)
			thisHashCode& = core.malloc.getHash(authId&, this$): this$ = mid$(this$, 5)
			size& = core.malloc.getHash(authId&, this$): this$ = mid$(this$, 5)
			thisValue$ = left$(this$, size&): this$ = mid$(this$, size& + 1)
			if(thisValue$ = value$) then
				core.malloc.put = mkl$(thisHashCode&)
				exit function
			endif
		wend
		mallocTable$ = mallocTable$ + core.malloc.valueOf(authId&, core.malloc.hashCode(authId&, 1), value$)
		core.malloc.put = mkl$(core.malloc.hashCode(authId&, 0))
	else
		core.malloc.put = ""
		error 5
	endif
end function

function core.malloc.valueOf$(authId&, hashCode&, value$)
	if core.malloc.authId(authId&) then
		core.malloc.valueOf = mkl$(hashCode&) + mkl$(len(value$)) + value$
	else
		core.malloc.valueOf = ""
		error 5
	endif
end function

$ENDIF
