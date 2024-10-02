#  Clear Disk

## Press Windows + *
```
1. Press Windows + S, type Disk Cleanup
2. Press Windows + X and select Apps and Features
3. Press Windows + R, type %temp%, and press Enter
4. Press Windows + R, type temp, and press Enter. Delete all files in this folder as well
5. Press Windows + X and select Command Prompt (Admin) or Windows PowerShell (Admin).
    powercfg -h off
```
## temp
```
%temp%
mrt
```
```
C:\Windows\Prefetch
```
```
隐私和安全性--》常规--》关闭
```
## Close network link in windows
```
netstat -ano
tasklist /FI "PID eq 16184"
taskkill /PID 5684 /F
```
```
5684
4852
kislive.exe  // 金山毒霸升级文件的保护进程
msedge.exe  // Microsoft Edge网页浏览器软件
explorer.exe  // Windows的文件资源管理器
chrome.exe  // Chrome浏览器的执行文件
WWAHost.exe  // Windows中的一个宿主进程，用于承载和执行使用Web技术（如HTML、CSS和JavaScript）构建的应用程序
svchost.exe  // 从动态链接库 (DLL) 中运行的服务的通用主机进程名称
kxescore.exe  // 金山毒霸2009套装中的查杀子系统及文件实时监控服务进程
Widgets.exe  // 像是天氣、新聞..等，這些就是小工具
```
   
