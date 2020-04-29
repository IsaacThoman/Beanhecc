
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$BeanHecc                        = New-Object system.Windows.Forms.Form
$BeanHecc.ClientSize             = '210,200'
$BeanHecc.text                   = "BeanHecc"
$BeanHecc.TopMost                = $false

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Click here to edit your text"
$Button1.width                   = 184
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(15,50)
$Button1.Font                    = 'Microsoft Sans Serif,10'

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.text                   = "1000"
$TextBox1.width                  = 100
$TextBox1.height                 = 30
$TextBox1.location               = New-Object System.Drawing.Point(15,110)
$TextBox1.Font                   = 'Microsoft Sans Serif,10'

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Pause Between Lines (ms)"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(15,90)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$CheckBox1                       = New-Object system.Windows.Forms.CheckBox
$CheckBox1.text                  = "Loop"
$CheckBox1.AutoSize              = $false
$CheckBox1.width                 = 95
$CheckBox1.height                = 20
$CheckBox1.location              = New-Object System.Drawing.Point(15,140)
$CheckBox1.Font                  = 'Microsoft Sans Serif,10'

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "View project on GitHub"
$Button2.width                   = 184
$Button2.height                  = 30
$Button2.location                = New-Object System.Drawing.Point(15,160)
$Button2.Font                    = 'Microsoft Sans Serif,10'

$turnon                          = New-Object system.Windows.Forms.Button
$turnon.text                     = "On"
$turnon.width                    = 80
$turnon.height                   = 30
$turnon.location                 = New-Object System.Drawing.Point(15,5)

$turnoff                         = New-Object system.Windows.Forms.Button
$turnoff.text                    = "Off"
$turnoff.width                   = 80
$turnoff.height                  = 30
$turnoff.location                = New-Object System.Drawing.Point(110,5)
$turnoff.Font                    = 'Microsoft Sans Serif,10'

$BeanHecc.controls.AddRange(@($Button1,$TextBox1,$Label1,$CheckBox1,$Button2,$turnon,$turnoff))


function openweb { }

#Write your logic code here

[void]$BeanHecc.ShowDialog()

$CheckBox1.Add_CheckStateChanged({ poop })


$Button1.Add_Click({ opentxt })

function opentxt{
start hecc.txt
}