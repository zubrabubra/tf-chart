kubectl delete jobs ps-0 worker-0 worker-1 tb-0
kubectl delete svc ps-0 worker-0 worker-1 tb-0
kubectl delete ing tb-0
kubectl delete configmaps tensorflowjob1-cluster-config
kubectl delete events —all
kubectl get po
