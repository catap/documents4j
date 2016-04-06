' First, try to get a running instance.
On Error Resume Next
Dim powerpointApplication
Set powerpointApplication = GetObject(, "PowerPoint.Application")

' If MS PowerPoint is already running, the script is successful.
If Err = 0 Then
  WScript.Quit 3
End If

' Start MS PowerPoint.
Set powerpointApplication = CreateObject("PowerPoint.Application")
If Err = 0 Then
  WScript.Quit -6
End If

' Exit and signal success.
WScript.Quit 3