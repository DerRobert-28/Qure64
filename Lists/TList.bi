$IF QBCC_LISTS_TLIST=UNDEFINED THEN
$LET QBCC_LISTS_TLIST=DEFINED

$IF QBCC_LISTS=UNDEFINED THEN
$ERROR expected: 'Lists.bi'
$ENDIF

type TList
	value as string
end type

'$INCLUDE:'TList/add.bi'
'$INCLUDE:'TList/addAll.bi'
'$INCLUDE:'TList/clear.bi'
'$INCLUDE:'TList/from.bi'
'$INCLUDE:'TList/get.bi'
'$INCLUDE:'TList/getHead.bi'
'$INCLUDE:'TList/getTail.bi'
'$INCLUDE:'TList/IndexOutOfBoundsException.bi'
'$INCLUDE:'TList/isEmpty.bi'
'$INCLUDE:'TList/of.bi'
'$INCLUDE:'TList/sizeOf.bi'
'$INCLUDE:'TList/sort.bi'
'$INCLUDE:'TList/toArray.bi'
'$INCLUDE:'TList/toString.bi'

$ENDIF
