$messagelimit = 58
#set the messages to send
sleep 3
$textline = 0
function hecc {
$textline = $textline + 1
$message = (gc hecc.txt | select-object -Index $textline) | Out-String
[System.Windows.Forms.SendKeys]::SendWait($message)
sleep 1
if($textline -lt $messagelimit) {
hecc
}
}
hecc

