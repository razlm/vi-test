## DevOps Engineer Home Assignment
Hi all,
First of all thank you very much for the opportunity it was a great home task
And I really enjoyed

### Steps I did
1. Connect aws account.
2. config kubectl
3. Create cluster with node group(terraform)
4. helm install for aws-ebs-csi-driver
5. Install helm chart mongo
6. Create my repo: 
https://github.com/razlm/vi-test
7. Create docker file for the services.
8. Create helm charts for the services.
9. deploy them
10. Create CI/CD monitor and all the bonus part

### Some Words from me
I was stuck in the chart build for the services too long.
I got this error:
/app/node_modules/bson/lib/bson.cjs:579
        inspect ??= defaultInspect;
                ^^^

SyntaxError: Unexpected token '??='
    at wrapSafe (internal/modules/cjs/loader.js:1029:16)
    at Module._compile (internal/modules/cjs/loader.js:1078:27)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:1143:10)
    at Module.load (internal/modules/cjs/loader.js:979:32)
    at Function.Module._load (internal/modules/cjs/loader.js:819:12)
    at Module.require (internal/modules/cjs/loader.js:1003:19)
    at require (internal/modules/cjs/helpers.js:107:18)
    at Object.<anonymous> (/app/node_modules/mongodb/lib/bson.js:4:14)
    at Module._compile (internal/modules/cjs/loader.js:1114:14)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:1143:10)

I don't know much about node or any app side or code.
But I understand its a version issue,
Tryied a few version ans still happaning.
It is worked with docker run but not with the helm install on the cluster.
So I continue without it working proparly

### How To Use
- to create cluster with all INFRA objects you can just run 'terraform apply' on the /IAC folder 
- The CI/CD should run for any changes in /packages/*
  - if it will be in one of them is should trigger the github action to build and push the docker to ecr
  - if you merge it it should deploy it on 'production' with helm upgrade

Future planning:
- Managing versions, start with docker and then charts.
- install prometheus grafana for monitor/alerting
- improve the ci/cd
- add some other tool for cd like argo.

Thank you
Raz Leshem.
