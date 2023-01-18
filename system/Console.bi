$IF QBCC_CONSOLE=UNDEFINED THEN
$LET QBCC_CONSOLE=DEFINED

$IF QBCC=UNDEFINED THEN
$ERROR expected: 'qbcc\system.bi'
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
