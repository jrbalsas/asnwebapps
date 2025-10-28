FROM owasp/modsecurity-csr:nginx
LABEL mantainer="jrbalsas@ujaen.es"

# Disable WAF on health-check url, i.e. /healthz

RUN echo 'SecRule REQUEST_URI "@beginsWith /healthz" "phase:1,id:40003,nolog,allow,ctl:auditEngine=Off"' \
    >>  /etc/modsecurity.d/owasp-crs/rules/REQUEST-900-EXCLUSION-RULES-BEFORE-CRS.conf

# Disable warning if no client ip hostname
RUN echo 'SecRuleRemoveById 920350' \
    >> /etc/modsecurity.d/owasp-crs/rules/RESPONSE-999-EXCLUSION-RULES-AFTER-CRS.conf