$IF QBCC_SYSTEM_CONSOLE=UNDEFINED THEN
$LET QBCC_SYSTEM_CONSOLE=DEFINED

$IF QBCC_SYSTEM=UNDEFINED THEN
$ERROR expected: 'System.bi'
$ENDIF

'$INCLUDE:'Console/Background.bi'
'$INCLUDE:'Console/clear.bi'
'$INCLUDE:'Console/Foreground.bi'
'$INCLUDE:'Console/NewLine.bi'
'$INCLUDE:'Console/read.bi'
'$INCLUDE:'Console/readKey.bi'
'$INCLUDE:'Console/readLine.bi'
'$INCLUDE:'Console/setColor.bi'
'$INCLUDE:'Console/waitKey.bi'
'$INCLUDE:'Console/write.bi'
'$INCLUDE:'Console/writeLine.bi'

$ENDIF
