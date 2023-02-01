$IF QURE64_CC_SYSTEM_CONSOLE=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_CONSOLE=DEFINED

'$INCLUDE:'Console/Background.bi'
'$INCLUDE:'Console/clear.bi'
'$INCLUDE:'Console/Foreground.bi'
'$INCLUDE:'Console/newLine.bi'
'$INCLUDE:'Console/read.bi'
'$INCLUDE:'Console/readKey.bi'
'$INCLUDE:'Console/readLine.bi'
'$INCLUDE:'Console/setColor.bi'
'$INCLUDE:'Console/waitKey.bi'
'$INCLUDE:'Console/write.bi'
'$INCLUDE:'Console/writeLine.bi'

$ENDIF
