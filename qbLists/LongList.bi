$IF QBLISTS_LONGLIST=UNDEFINED THEN
$LET QBLISTS_LONGLIST=DEFINED

$IF QBLISTS=UNDEFINED THEN
$ERROR expected: 'qbLists.bi'
$ENDIF

type LongList
	value as TList
end type

'$INCLUDE:'LongList/add.bi'
'$INCLUDE:'LongList/addAll.bi'
'$INCLUDE:'LongList/class.bi'
'$INCLUDE:'LongList/clear.bi'
'$INCLUDE:'LongList/from.bi'
'$INCLUDE:'LongList/fromGeneric.bi'
'$INCLUDE:'LongList/get.bi'
'$INCLUDE:'LongList/getHead.bi'
'$INCLUDE:'LongList/getTail.bi'
'$INCLUDE:'LongList/isEmpty.bi'
'$INCLUDE:'LongList/sizeOf.bi'
'$INCLUDE:'LongList/sort.bi'
'$INCLUDE:'LongList/toArray.bi'
'$INCLUDE:'LongList/toGeneric.bi'
'$INCLUDE:'LongList/toString.bi'

$ENDIF
