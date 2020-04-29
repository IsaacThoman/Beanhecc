<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Untitled
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$BeanHecc                        = New-Object system.Windows.Forms.Form
$BeanHecc.ClientSize             = '209,165'
$BeanHecc.text                   = "BeanHecc"
$BeanHecc.TopMost                = $false

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Click here to edit your text"
$Button1.width                   = 184
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(15,10)
$Button1.Font                    = 'Microsoft Sans Serif,10'

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.text                   = "1000"
$TextBox1.width                  = 100
$TextBox1.height                 = 30
$TextBox1.location               = New-Object System.Drawing.Point(15,80)
$TextBox1.Font                   = 'Microsoft Sans Serif,10'

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Pause Between Lines (ms)"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(15,60)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$CheckBox1                       = New-Object system.Windows.Forms.CheckBox
$CheckBox1.text                  = "Loop"
$CheckBox1.AutoSize              = $false
$CheckBox1.width                 = 95
$CheckBox1.height                = 20
$CheckBox1.location              = New-Object System.Drawing.Point(15,110)
$CheckBox1.Font                  = 'Microsoft Sans Serif,10'

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "View project on GitHub"
$Button2.width                   = 184
$Button2.height                  = 30
$Button2.location                = New-Object System.Drawing.Point(15,130)
$Button2.Font                    = 'Microsoft Sans Serif,10'

$BeanHecc.controls.AddRange(@($Button1,$TextBox1,$Label1,$CheckBox1,$Button2))


function openweb { }

#Write your logic code here

[void]$BeanHecc.ShowDialog()
