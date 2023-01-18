$IF QBUNITTEST=UNDEFINED THEN
$LET QBUNITTEST=DEFINED

$IF QBCC=UNDEFINED THEN
$ERROR expected:'qbcc.bi'
$ENDIF

'*****************************************
'**                                     **
'**  These methods have to be defined:  **
'**                                     **
'*****************************************
declare sub After(this as WorldData)
declare sub Before(this as WorldData)
declare sub RunTests(this as WorldData)

'**********************
'**                  **
'**  Also expected:  **
'**                  **
'******************************
'**                          **
'**  type WorldData          **
'**    <property> as <type>  **
'**  end type                **
'**                          **
'******************************

function Main%(argc%, argv$())
	dim world as WorldData
	call Before(world)
	call RunTests(world)
	call After(world)
end function

'$INCLUDE:'qbUnitTest/Assert.bi'

$ENDIF
