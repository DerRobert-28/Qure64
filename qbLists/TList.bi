$IF QBLISTS_TLIST=UNDEFINED THEN
$LET QBLISTS_TLIST=DEFINED

$IF QBLISTS=UNDEFINED THEN
$ERROR expected: 'qbLists.bi'
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
