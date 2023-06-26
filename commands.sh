#!/bin/bash

ssh-keygen -t rsa

cat ~/.ssh/id_rsa.pub

git clone git@github.com:t85/CloudDevops-Building-A-CI-CD-Pipeline.git

python3 -m venv ~/.flask-ml-azure
source ~/.flask-ml-azure/bin/activate

make install

./make_prediction.sh

az webapp up --resource-group Azuredevops 
             --name flask-ml-service-thomas 
             --sku F1
            --location eastus 
            --verbose

./make_predict_azure_app.sh