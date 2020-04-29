$messagelimit = 58
#set the messages to send
sleep 3
$textline = 0
$beanstop = 1


function hecc {
$textline = $textline + 1
$message = (gc hecc.txt | select-object -Index $textline) | Out-String
[System.Windows.Forms.SendKeys]::SendWait($message)
$waitTime = $TextBox1.Text
sleep $waitTime
if($textline -lt $messagelimit) {
if($beanstop = 0){
hecc
}
}
if($textline -gt $messagelimit) {
$loopchecked = $CheckBox1.CheckState
if($loopchecked -eq 'Checked'){
$textline = 0

hecc
}
$loopchecked = $CheckBox1.CheckState
if($loopchecked -eq 'Unchecked'){
beanstop
}


}

}
hecc

function beanstop{
$beanstop = 1


}

function openweb{
start https://bean.bike/hecc
}



function opentxt{
start hecc.txt
}


$Button1.Add_Click({ opentxt })
$Button2.Add_Click({ openweb })
