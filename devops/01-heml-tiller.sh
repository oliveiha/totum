#!/bin/sh
curl -L https://git.io/get_helm.sh | bash
helm init --service-account tiller
#kubectl apply -f 01-tiller-account.yaml
#kubectl patch deployment tyller-deploy -n kube-system --patch "$(cat 01-tiller-patch.yaml)"