

- create juju cluster
`juju bootstrap aws/us-east-1 --credential rafaelzubairovpersonal --config vpc-id=vpc-200ac747 --constraints "instance-type=t2.large"`

- then deploy acluster
`juju deploy acluster.yml`

- wait for cluster to be ready
`watch -c juju status --color`
