# PVCs
oc apply -f data-persistentvolumeclaim.yaml
oc apply -f db-persistentvolumeclaim.yaml
oc apply -f keys-persistentvolumeclaim.yaml

# Services
oc apply -f pathdb-service.yaml
oc apply -f mongo-service.yaml
oc apply -f back-service.yaml
oc apply -f iip-service.yaml

# Deployments
oc apply -f pathdb-deployment.yaml
oc apply -f back-deployment.yaml
oc apply -f iip-deployment.yaml
oc apply -f mongo-deployment.yaml
oc apply -f imageloader-deployment.yaml

# Expose
oc expose svc/quip-pathdb
oc expose svc/ca-security
oc expose svc/ca-mongo
oc expose svc/ca-iip

# Load sample images
