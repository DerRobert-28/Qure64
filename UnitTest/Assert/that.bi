$IF QBCC_UNITTEST_ASSERT_THAT=UNDEFINED THEN
$LET QBCC_UNITTEST_ASSERT_THAT=DEFINED

$IF QBCC_UNITTEST_ASSERT=UNDEFINED THEN
$ERROR expected: 'Assert.bi'
$ENDIF

sub Assert.that(expected%%, message$)
	_assert expected%%, message$
end sub

$ENDIF
