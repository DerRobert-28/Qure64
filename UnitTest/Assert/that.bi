$IF QBUNITTEST_ASSERT_THAT=UNDEFINED THEN
$LET QBUNITTEST_ASSERT_THAT=DEFINED

$IF QBUNITTEST_ASSERT=UNDEFINED THEN
$ERROR expected: 'Assert.bi'
$ENDIF

sub Assert.that(expected%%, message$)
	_assert expected%%, message$
end sub

$ENDIF
