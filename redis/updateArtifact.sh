#!/bin/sh
set -eux
iapwrap --client-id=765200607166-iua6cn073kkuncalas74fq2n0r5ng61o.apps.googleusercontent.com -- https://odj.cloud/api/orgs/sit/products/joazk8s/stages/prod -o prod.json
iapwrap --client-id=765200607166-iua6cn073kkuncalas74fq2n0r5ng61o.apps.googleusercontent.com -- https://odj.cloud/api/orgs/sit/products/joazk8s/stages/dev -o dev.json
artifact="$(jq -r '.componentDeployments[0].artifact' prod.json)"
echo "$artifact"
jq ".componentDeployments[0].artifact='$artifact'" dev.json >dev_new.json
cat dev_new.json
iapwrap --client-id=765200607166-iua6cn073kkuncalas74fq2n0r5ng61o.apps.googleusercontent.com -- -X PATCH -d @dev_new.json https://odj.cloud/api/orgs/sit/products/joazk8s/stages/dev
