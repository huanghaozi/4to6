dataL = ""
dataA = "2606:4700:30::6818:7212 npupt.com"
dataB = "2606:4700:30::6818:7212 6.npupt.com"
Host = "c:\windows\system32\drivers\etc\hosts"
set fs =createobject("scripting.filesystemobject")
     If(fs.fileexists(Host)) Then
          set File = fs.opentextfile(Host,8)
          File.writeline dataL
          File.writeline dataA
          File.writeline dataB
          File.writeline dataL
          File.close
     End If
set fs = Nothing