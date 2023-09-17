# Build the container and deploy it
docker build -t test-env-app .

# Create a secrets object in Kubernetes
kubectl apply -f ./testSecrets.yaml

# Create a pod with the test-env-app container and deploy it
kubectl apply -f testPod.yaml
