# Android
## Platform
![image](https://github.com/user-attachments/assets/2b4c334f-4b6b-43bd-8ec1-819f9d0731e2)

## Init project
VScode create project
```
npm install -g react-native-cli
npm uninstall -g react-native-cli
```
```
npx react-native init MyProject
cd MyProject
```
Config enviroument
```
nano ~/.bash_profile
source ~/.bash_profile
echo $ANDROID_HOME
echo $JAVA_HOME
```
```
export ANDROID_HOME=~/lj/Android/Sdk
export ANDROID_SDK_ROOT=~/lj/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
```
```
sudo apt install openjdk-17-jdk
java -version
```
```
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
source ~/.bash_profile
```
Android config
```
Tools-->SDK Manager-->Platforms and Tools
```
VScode start
```
npx react-native doctor
npx react-native start
npx react-native run-android
```
```
netstat -ano | findstr :8081
taskkill /PID <PID> /F
```
Path:C:\Users\86199\AppData\Local\Android\Sdk\emulator
```
.\emulator -list-avds
.\emulator -avd Medium_Phone_API_35
sudo apt install google-android-installer
```
![image](https://github.com/user-attachments/assets/b3ac4dee-61c6-40da-9fea-1e0219cca422)

