# Full stack
## Front end
```
cd /home/project/xrwvm-fullstack_developer_capstone/server/frontend
npm install
npm run build
```
## Start API server
```
// Run the Mongo Server, 修改app.js之后执行
cd /home/project/xrwvm-fullstack_developer_capstone/server/database
newgrp docker
docker build . -t nodeapp
docker-compose up/docker compose up
```
```
https://rosaspace-3030.theiadockernext-1-labs-prod-theiak8s-4-tor01.proxy.cognitiveclass.ai/
```
## Run
```
// Run the following to set up the django environment.
cd /home/project/xrwvm-fullstack_developer_capstone/server
pip install virtualenv
virtualenv djangoenv
source djangoenv/bin/activate
```
```
python3 -m pip install -U -r requirements.txt
python3 manage.py makemigrations
python3 manage.py migrate --run-syncdb 
python3 manage.py runserver 0.0.0.0:8000
```
```
https://rosaspace-8000.theiadockernext-1-labs-prod-theiak8s-4-tor01.proxy.cognitiveclass.ai/
```
## Create Admin
```
python3 manage.py createsuperuser
```
## Create function to interact with backend
```
// Create Django Proxy Services Of Backend APIs
// Create Project——Init Project
cd xrwvm-fullstack_developer_capstone/server/djangoapp/microservices
docker build . -t us.icr.io/${SN_ICR_NAMESPACE}/senti_analyzer
docker push us.icr.io/${SN_ICR_NAMESPACE}/senti_analyzer
ibmcloud ce application create --name sentianalyzer --image us.icr.io/${SN_ICR_NAMESPACE}/senti_analyzer --registry-secret icr-secret --port 5000
```
```
https://sentianalyzer.1kb7496nloqk.us-south.codeengine.appdomain.cloud
```