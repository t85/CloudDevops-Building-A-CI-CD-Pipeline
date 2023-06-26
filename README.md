[![Python application test with Github Actions](https://github.com/thom/azure-ci-cd-pipeline/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/thom/azure-ci-cd-pipeline/actions/workflows/pythonapp.yml)


# Overview

In this procject we demonstrate continuous integration (CI) and continuous delivery (CD). For that we create a ML application and use GitHub Actions for CI and Azure Pipelines for CD.

## Project Plan
<TODO: Project Plan

* A link to a Trello board for the project
* A link to a spreadsheet that includes the original and final project plan>

## Instructions

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

In order to run the project, perform the following steps:

### Run the app in Azure Cloud Shell
1. Open an Azure cloud shell.

2. Generate an SSH key by using
```bash
ssh-keygen -t rsa
```

3. Read out the key by using
```bash
cat ~/.ssh/id_rsa.pub
```
and add it to your GitHub account.

4. Clone the project using
```bash
git clone git@github.com:t85/CloudDevops-Building-A-CI-CD-Pipeline.git
```
![Project cloned to Cloud Shell](Screeshots/01-Screenshot-Project-Cloned-Into-Cloud-Shell.png)

5. Create a new Python environment:
```bash
python3 -m venv ~/.flask-ml-azure
source ~/.flask-ml-azure/bin/activate
```
6. Install dependencies and run tests:
```bash
make install
```
7. Make a prediction:
```bash
./make_prediction.sh
```
8. Also, the GitHub action was successful:


### Deploy the app using CI/CD

In order to trigger the CI/CD process, commit and push the repository.

Then, the azure pipeline will build the project:




And also 
az webapp up --resource-group Azuredevops --name flask-ml-service-th --sku F1 --location eastus --verbose

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

Youtube screencast:
https://www.youtube.com/watch?v=0GBhjHneWek



python3 -m venv ~/.flask-ml-azure
source ~/.flask-ml-azure/bin/activate

ssh-keygen -t rsa

git clone git@github.com:t85/CloudDevops-Building-A-CI-CD-Pipeline.git

make install

az webapp up --resource-group Azuredevops --name flask-ml-service-th --sku F1 --location eastus --verbose

