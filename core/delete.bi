$IF QURE64_CORE_DELETE=UNDEFINED THEN
$LET QURE64_CORE_DELETE=DEFINED

function delete&(this&)
	delete& = cvl(malloc$("delete", mkl$(this&)))
end function

sub delete(this&)
	dim dummy&
	dummy& = cvl(malloc$("delete", mkl$(this&)))
end function

$ENDIF
