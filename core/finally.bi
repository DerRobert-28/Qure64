$IF QURE64_CORE_FINALLY=UNDEFINED THEN
$LET QURE64_CORE_FINALLY=DEFINED

sub finally()
	on error goto 0
end sub

$ENDIF
