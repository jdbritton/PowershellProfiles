function Say-Text {
    param ([Parameter(Mandatory = $true, ValueFromPipeline = $true)] [string] $Text)
    [Reflection.Assembly]::LoadWithPartialName('System.Speech') | Out-Null   
    $object = New-Object System.Speech.Synthesis.SpeechSynthesizer 
    $object.Speak($Text) 
}

<#  {
     [Reflection.Assembly]::LoadWithPartialName('System.Speech') | Out-Null   
     $object = New-Object System.Speech.Synthesis.SpeechSynthesizer 
     $object.Speak("I like fish") 
 } | iex #>