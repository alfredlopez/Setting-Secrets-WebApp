# Secrets to WebApp Demo

This project demonstrates how to provide kubernetes secrets to a Node Web Application. 

## Requirements for running locally
<ol>
<li>Install Docker Desktop</li>
<li>Enable Kubernetes in Docker Desktop</li>
<li>Alternatively, install minikube with docker enabled</li>
</ol>

## Building and Running
<ol>
<li>Execute <em>deployAll.sh</em></li>
<li>Open a browser to <a>http://localhost:30080</a></li>
</ol>

The page should display the secrets from the Secrets object as described in <em>testSecrets.yaml</em>.

## How it works
Running <em>deployAll.sh</em> does the following:

<ol>
<li>Runs the Dockerfile to create the image. <em>loadvars.sh</em> is the entrypoint for the container</li>
<li>Deploys the Secret object containing the secrets to expose</li>
<li>Deploys the Pod which provides the secrets as environment variables to the container.</li>
</ol>
