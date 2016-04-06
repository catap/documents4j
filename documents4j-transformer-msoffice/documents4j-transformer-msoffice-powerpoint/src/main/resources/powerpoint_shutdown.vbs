Const WdDoNotSaveChanges = 0

' Try to get currently running instance of MS PowerPoint.
On Error Resume Next
Dim powerpointApplication
Set powerpointApplication = GetObject(, "PowerPoint.Application")

' If no such instance can be found, MS PowerPoint is already shut down.
If Err <> 0 Then
  WScript.Quit 3
End If

' Try to shut down MS PowerPoint.
powerpointApplication.Quit WdDoNotSaveChanges

' If this was impossible, exit with an error.
If Err <> 0 Then
  WScript.Quit -6
End If
On Error GoTo 0

' MS Word was shut down successfully.
WScript.Quit 3