$IF QURE64_SYSTEM_CORE_RANDOM=UNDEFINED THEN
$LET QURE64_SYSTEM_CORE_RANDOM=DEFINED

function core.random.asc~%%(dummy%)
	core.random.asc = asc(core.random.string(1))
end function

function core.random.byte%%(dummy%)
	dim this as _byte
	core.random.byte = asc(core.random.string(len(this)))
end function

function core.random.chr$(dummy%)
	core.random.chr = core.random.string(1)
end function

function core.random.double!(dummy%)
	dim this as double
	core.random.double = cvd(core.random.string(len(this)))
end function

function core.random.double.mbf!(dummy%)
	dim this as double
	core.random.double.mbf = cvdmbf(core.random.string(len(this)))
end function

function core.random.integer%(dummy%)
	dim this as integer
	core.random.integer = cvi(core.random.string(len(this)))
end function

function core.random.integer64&&(dummy%)
	dim this as _integer64
	core.random.integer64 = _cv(_integer64, core.random.string(len(this)))
end function

function core.random.long&(dummy%)
	dim this as long
	core.random.long = cvl(core.random.string(len(this)))
end function

function core.random.float##(dummy%)
	dim this as _float
	core.random.float = _cv(_float, core.random.string(len(this)))
end function

function core.random.offset%&(dummy%)
	dim this as _offset
	core.random.offset = _cv(_offset, core.random.string(len(this)))
end function

function core.random.single!(dummy%)
	dim this as single
	core.random.single = cvs(core.random.string(len(this)))
end function

function core.random.single.mbf!(dummy%)
	dim this as single
	core.random.single.mbf = cvsmbf(core.random.string(len(this)))
end function

function core.random.string$(n%)
	randomize timer
	dim randomStr$, i%
	randomStr$ = ""
	for i% = 1 to n%
		randomStr$ = randomStr$ + chr$(int(rnd * 256))
	next
	core.random.string = randomStr$
end function

$ENDIF
