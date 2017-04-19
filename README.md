

* Create K8S Canonical Cluster using juju:

- create juju cluster

`juju bootstrap aws/us-east-1 --credential rafaelzubairovpersonal --config vpc-id=vpc-200ac747 --constraints "instance-type=t2.large"`

- then deploy acluster

`juju deploy acluster.yml`

- wait for cluster to be ready

`watch -c juju status --color`

* Deploying Distributed TF on K8S/Juju

- ssh to master

`juju ssh kubernetes-master/0`

all steps after that should be performed on kubernetes master machine:

- clone repository there
`git clone ...`

- install helm and initialize it:
```
curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh
helm init
git clone https://github.com/zubrabubra/tf-chart/
cd tf-chart
helm serve . &

```

- create PV/PVC
`helm install efs --name release-name --debug --dry-run`

- start distributed learning

`helm install tensorflow --name tensorflow --values tensorflow/values.yaml`
