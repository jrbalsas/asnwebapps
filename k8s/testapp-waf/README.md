# Sample Kubernetes deployment with WAF service

WAF based in `owasp/modsecurity-crs:nginx` container


## Usage

* Configure WAF using environment variables and/or custom rule files in configMap file `waf-configmap.yaml`.
* After apply changes in configMap it is neccesary to reload the WAF deployment to get new config falues:
`$ kubectl rollout restart deployment/waf`

More details in https://github.com/coreruleset/modsecurity-crs-docker