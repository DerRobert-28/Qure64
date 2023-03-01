$IF QURE64_UNITTEST=UNDEFINED THEN
$LET QURE64_UNITTEST=DEFINED

'================]  DECLARE  [================'

declare sub After(this as WorldData)
declare sub Before(this as WorldData)
declare sub RunTests(this as WorldData)

'================]  TYPE  [================'

'type WorldData
'    <property1> as <type1>
'    <property2> as <type2>
'    <property3> as <type3>
'    ...
'    <propertyN> as <typeN>
'end type

'================]  FUNCTION  [================'

function Main%(argc%, argv$())
	dim world as WorldData
	call Before(world)
	call RunTests(world)
	call After(world)
end function

'$INCLUDE:'UnitTest/Assert.bi'

$ENDIF
