$IF QBLISTS_STRINGLIST=UNDEFINED THEN
$LET QBLISTS_STRINGLIST=DEFINED

$IF QBLISTS=UNDEFINED THEN
$ERROR expected: 'qbLists.bi'
$ENDIF

type StringList
	value as string
	'TODO: (in the future) value as _mem
end type

'$INCLUDE:'StringList/add.bi'
'$INCLUDE:'StringList/addAll.bi'
'$INCLUDE:'StringList/clear.bi'
'$INCLUDE:'StringList/from.bi'
'$INCLUDE:'StringList/get.bi'
'$INCLUDE:'StringList/getHead.bi'
'$INCLUDE:'StringList/getTail.bi'
'$INCLUDE:'StringList/isEmpty.bi'
'$INCLUDE:'StringList/sizeOf.bi'
'$INCLUDE:'StringList/sort.bi'
'$INCLUDE:'StringList/sortIgnoreCase.bi'
'$INCLUDE:'StringList/toArray.bi'
'$INCLUDE:'StringList/toString.bi'

$ENDIF
