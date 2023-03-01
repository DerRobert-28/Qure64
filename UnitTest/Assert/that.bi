$IF QURE64_UNITTEST_ASSERT_THAT=UNDEFINED THEN
$LET QURE64_UNITTEST_ASSERT_THAT=DEFINED

sub Assert.that(expected%, message$)
	_assert expected%, message$
end sub

$ENDIF
