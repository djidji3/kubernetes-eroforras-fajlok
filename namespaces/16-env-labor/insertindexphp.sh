#!/bin/sh

kubectl rollout status deployment php
kubectl rollout status deployment web

echo "<?php echo \"\${NS} system php: \".gethostname(); ?>" > index.php

sleep 2s
POD_NAMES=\$(kubectl get pods -l app=devopsakademia -o jsonpath='{.items[*].metadata.name}')
for POD in \$(eval echo \${POD_NAMES}) ; do
  kubectl cp index.php \${POD}:/var/www/ ;
  done

# chmod +x insertindexphp.sh