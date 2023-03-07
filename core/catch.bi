$IF QURE64_CORE_CATCH=UNDEFINED THEN
$LET QURE64_CORE_CATCH=DEFINED

function catch%()
	shared LASTEXCEPTION%
	catch% = LASTEXCEPTION%
end function

sub catch(this%)
	shared LASTEXCEPTION%
	this% = LASTEXCEPTION%
end sub

$ENDIF
