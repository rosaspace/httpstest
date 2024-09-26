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
## Close network link in windows
```
netstat -ano
tasklist /FI "PID eq 16184"
taskkill /PID 5684 /F
```
   
