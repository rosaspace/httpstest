# Python
## Install basic
```sh
sudo apt update
sudo apt install nodejs
sudo apt install npm
sudo apt install git
sudo apt install python3 
sudo apt install python3-pip
```
## Install Django
```sh
pip install django
django-admin --version
python manage.py collectstatic// 收集静态文件
```
## Create project and app
```
django-admin startproject lecture3
python manage.py startapp hello
code .
```
## Input command to python
```
python3 manage.py shell
```
## Run
```
python3 manage.py migrate  // 生成数据库中的表
python3 manage.py makemigrations  // 根据Model生成init*.py文件
python manage.py createsuperuser  // 创建管理员
python manage.py runserver 0.0.0.0:8000
```
## Virtual environment
```sh
sudo apt install python3-virtualenv
sudo apt install python3-venv
python3 -m venv myenv
source myenv/bin/activate
pip install django-pwa
deactivate
```

## Scientific Calculation
```sh
conda activate base
conda env list
conda deactivate
jupyter lab --ip=0.0.0.0
```
## Python AI Library
Detect text from image
```
安装Tesseract OCR 引擎
pip install pytesseract
pip install Pillow  // Python 图像库(PIL)
```
Detect music
```
pip install librosa // 用于音乐和音频分析
pip install scikit-learn joblib
python create_model.py
```
Detect audio
```
pip install SpeechRecognition
pip install pydub  // 用于音频文件处理和格式转换
choco install ffmpeg  // pydub 依赖于 ffmpeg
```
Chat
```
pip install flask requests python-dotenv
```
