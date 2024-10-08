# Android
## Platform
![image](https://github.com/user-attachments/assets/2b4c334f-4b6b-43bd-8ec1-819f9d0731e2)
## Install node
```
sudo dnf install nodejs
node --version
npm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bash_profile
nvm list-remote
nvm install v13.6.0
nvm list
```
## Install java
```
sudo yum install java
java -version
sudo yum install java-devel
sudo yum install java-17-openjdk
sudo alternatives --config java
```
Config enviroument
```
nano ~/.bash_profile
source ~/.bash_profile
echo $ANDROID_HOME
echo $JAVA_HOME
echo $ANDROID_SDK_ROOT
```
```
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
```
```
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
source ~/.bash_profile
```
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
Check permissions 
```
sudo chmod -R 755 $ANDROID_SDK_ROOT
sudo chown -R $USER:$USER $ANDROID_SDK_ROOT
```
![image](https://github.com/user-attachments/assets/b3ac4dee-61c6-40da-9fea-1e0219cca422)
## Upload Photo
```
npm install react-native-image-picker axios
mkdir server
cd server
npm init -y
npm install express multer cors
mkdir uploads
node server.js
```
