$IF QB64CC_UNITTEST_ASSERT=UNDEFINED THEN
$LET QB64CC_UNITTEST_ASSERT=DEFINED

$IF QB64CC_UNITTEST=UNDEFINED THEN
$ERROR expected: 'UnitTest.bi'
$ENDIF

$ASSERTS:CONSOLE

sub Assert.that(expected%, message$)
	_assert expected%, message$
end sub

$ENDIF
