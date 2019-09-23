<<<<<<< HEAD
{"apiVersion":"apiextensions.k8s.io/v1beta1","kind":"CustomResourceDefinition","metadata":{"creationTimestamp":null,"name":"servicemonitors.monitoring.coreos.com"},"spec":{"group":"monitoring.coreos.com","names":{"kind":"ServiceMonitor","plural":"servicemonitors"},"scope":"Namespaced","validation":{"openAPIV3Schema":{"properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds","type":"string"},"spec":{"description":"ServiceMonitorSpec contains specification parameters for a ServiceMonitor.","properties":{"endpoints":{"description":"A list of endpoints allowed as part of this ServiceMonitor.","items":{"description":"Endpoint defines a scrapeable endpoint serving Prometheus metrics.","properties":{"basicAuth":{"description":"BasicAuth allow an endpoint to authenticate over basic authentication More info: https://prometheus.io/docs/operating/configuration/#endpoints","properties":{"password":{"description":"SecretKeySelector selects a key of a Secret.","properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"},"username":{"description":"SecretKeySelector selects a key of a Secret.","properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"}},"type":"object"},"bearerTokenFile":{"description":"File to read bearer token for scraping targets.","type":"string"},"bearerTokenSecret":{"description":"SecretKeySelector selects a key of a Secret.","properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"},"honorLabels":{"description":"HonorLabels chooses the metric's labels on collisions with target labels.","type":"boolean"},"interval":{"description":"Interval at which metrics should be scraped","type":"string"},"metricRelabelings":{"description":"MetricRelabelConfigs to apply to samples before ingestion.","items":{"description":"RelabelConfig allows dynamic rewriting of the label set, being applied to samples before ingestion. It defines `\u003cmetric_relabel_configs\u003e`-section of Prometheus configuration. More info: https://prometheus.io/docs/prometheus/latest/configuration/configuration/#metric_relabel_configs","properties":{"action":{"description":"Action to perform based on regex matching. Default is 'replace'","type":"string"},"modulus":{"description":"Modulus to take of the hash of the source label values.","format":"int64","type":"integer"},"regex":{"description":"Regular expression against which the extracted value is matched. defailt is '(.*)'","type":"string"},"replacement":{"description":"Replacement value against which a regex replace is performed if the regular expression matches. Regex capture groups are available. Default is '$1'","type":"string"},"separator":{"description":"Separator placed between concatenated source label values. default is ';'.","type":"string"},"sourceLabels":{"description":"The source labels select values from existing labels. Their content is concatenated using the configured separator and matched against the configured regular expression for the replace, keep, and drop actions.","items":{"type":"string"},"type":"array"},"targetLabel":{"description":"Label to which the resulting value is written in a replace action. It is mandatory for replace actions. Regex capture groups are available.","type":"string"}},"type":"object"},"type":"array"},"params":{"description":"Optional HTTP URL parameters","type":"object"},"path":{"description":"HTTP path to scrape for metrics.","type":"string"},"port":{"description":"Name of the service port this endpoint refers to. Mutually exclusive with targetPort.","type":"string"},"proxyUrl":{"description":"ProxyURL eg http://proxyserver:2195 Directs scrapes to proxy through this endpoint.","type":"string"},"relabelings":{"description":"RelabelConfigs to apply to samples before scraping. More info: https://prometheus.io/docs/prometheus/latest/configuration/configuration/#relabel_config","items":{"description":"RelabelConfig allows dynamic rewriting of the label set, being applied to samples before ingestion. It defines `\u003cmetric_relabel_configs\u003e`-section of Prometheus configuration. More info: https://prometheus.io/docs/prometheus/latest/configuration/configuration/#metric_relabel_configs","properties":{"action":{"description":"Action to perform based on regex matching. Default is 'replace'","type":"string"},"modulus":{"description":"Modulus to take of the hash of the source label values.","format":"int64","type":"integer"},"regex":{"description":"Regular expression against which the extracted value is matched. defailt is '(.*)'","type":"string"},"replacement":{"description":"Replacement value against which a regex replace is performed if the regular expression matches. Regex capture groups are available. Default is '$1'","type":"string"},"separator":{"description":"Separator placed between concatenated source label values. default is ';'.","type":"string"},"sourceLabels":{"description":"The source labels select values from existing labels. Their content is concatenated using the configured separator and matched against the configured regular expression for the replace, keep, and drop actions.","items":{"type":"string"},"type":"array"},"targetLabel":{"description":"Label to which the resulting value is written in a replace action. It is mandatory for replace actions. Regex capture groups are available.","type":"string"}},"type":"object"},"type":"array"},"scheme":{"description":"HTTP scheme to use for scraping.","type":"string"},"scrapeTimeout":{"description":"Timeout after which the scrape is ended","type":"string"},"targetPort":{"anyOf":[{"type":"string"},{"type":"integer"}]},"tlsConfig":{"description":"TLSConfig specifies TLS configuration parameters.","properties":{"caFile":{"description":"Path to the CA cert in the Prometheus container to use for the targets.","type":"string"},"caSecret":{"description":"SecretKeySelector selects a key of a Secret.","properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"},"certFile":{"description":"Path to the client cert file in the Prometheus container for the targets.","type":"string"},"certSecret":{"description":"SecretKeySelector selects a key of a Secret.","properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"},"insecureSkipVerify":{"description":"Disable target certificate validation.","type":"boolean"},"keyFile":{"description":"Path to the client key file in the Prometheus container for the targets.","type":"string"},"keySecret":{"description":"SecretKeySelector selects a key of a Secret.","properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"},"serverName":{"description":"Used to verify the hostname for the targets.","type":"string"}},"type":"object"}},"type":"object"},"type":"array"},"jobLabel":{"description":"The label to use to retrieve the job name from.","type":"string"},"namespaceSelector":{"description":"NamespaceSelector is a selector for selecting either all namespaces or a list of namespaces.","properties":{"any":{"description":"Boolean describing whether all namespaces are selected in contrast to a list restricting them.","type":"boolean"},"matchNames":{"description":"List of namespace names.","items":{"type":"string"},"type":"array"}},"type":"object"},"podTargetLabels":{"description":"PodTargetLabels transfers labels on the Kubernetes Pod onto the target.","items":{"type":"string"},"type":"array"},"sampleLimit":{"description":"SampleLimit defines per-scrape limit on number of scraped samples that will be accepted.","format":"int64","type":"integer"},"selector":{"description":"A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","items":{"type":"string"},"type":"array"}},"required":["key","operator"],"type":"object"},"type":"array"},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object"}},"type":"object"},"targetLabels":{"description":"TargetLabels transfers labels on the Kubernetes Service onto the target.","items":{"type":"string"},"type":"array"}},"required":["endpoints","selector"],"type":"object"}},"type":"object"}},"version":"v1"}}
=======
{"apiVersion":"apiextensions.k8s.io/v1beta1","kind":"CustomResourceDefinition","metadata":{"creationTimestamp":null,"name":"servicemonitors.monitoring.coreos.com"},"spec":{"group":"monitoring.coreos.com","names":{"kind":"ServiceMonitor","plural":"servicemonitors"},"scope":"Namespaced","validation":{"openAPIV3Schema":{"properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds","type":"string"},"spec":{"description":"ServiceMonitorSpec contains specification parameters for a ServiceMonitor.","properties":{"endpoints":{"description":"A list of endpoints allowed as part of this ServiceMonitor.","items":{"description":"Endpoint defines a scrapeable endpoint serving Prometheus metrics.","properties":{"basicAuth":{"description":"BasicAuth allow an endpoint to authenticate over basic authentication More info: https://prometheus.io/docs/operating/configuration/#endpoints","properties":{"password":{"description":"SecretKeySelector selects a key of a Secret.","properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"},"username":{"description":"SecretKeySelector selects a key of a Secret.","properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"}},"type":"object"},"bearerTokenFile":{"description":"File to read bearer token for scraping targets.","type":"string"},"bearerTokenSecret":{"description":"SecretKeySelector selects a key of a Secret.","properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"},"honorLabels":{"description":"HonorLabels chooses the metric's labels on collisions with target labels.","type":"boolean"},"interval":{"description":"Interval at which metrics should be scraped","type":"string"},"metricRelabelings":{"description":"MetricRelabelConfigs to apply to samples before ingestion.","items":{"description":"RelabelConfig allows dynamic rewriting of the label set, being applied to samples before ingestion. It defines `\u003cmetric_relabel_configs\u003e`-section of Prometheus configuration. More info: https://prometheus.io/docs/prometheus/latest/configuration/configuration/#metric_relabel_configs","properties":{"action":{"description":"Action to perform based on regex matching. Default is 'replace'","type":"string"},"modulus":{"description":"Modulus to take of the hash of the source label values.","format":"int64","type":"integer"},"regex":{"description":"Regular expression against which the extracted value is matched. defailt is '(.*)'","type":"string"},"replacement":{"description":"Replacement value against which a regex replace is performed if the regular expression matches. Regex capture groups are available. Default is '$1'","type":"string"},"separator":{"description":"Separator placed between concatenated source label values. default is ';'.","type":"string"},"sourceLabels":{"description":"The source labels select values from existing labels. Their content is concatenated using the configured separator and matched against the configured regular expression for the replace, keep, and drop actions.","items":{"type":"string"},"type":"array"},"targetLabel":{"description":"Label to which the resulting value is written in a replace action. It is mandatory for replace actions. Regex capture groups are available.","type":"string"}},"type":"object"},"type":"array"},"params":{"description":"Optional HTTP URL parameters","type":"object"},"path":{"description":"HTTP path to scrape for metrics.","type":"string"},"port":{"description":"Name of the service port this endpoint refers to. Mutually exclusive with targetPort.","type":"string"},"proxyUrl":{"description":"ProxyURL eg http://proxyserver:2195 Directs scrapes to proxy through this endpoint.","type":"string"},"relabelings":{"description":"RelabelConfigs to apply to samples before scraping. More info: https://prometheus.io/docs/prometheus/latest/configuration/configuration/#relabel_config","items":{"description":"RelabelConfig allows dynamic rewriting of the label set, being applied to samples before ingestion. It defines `\u003cmetric_relabel_configs\u003e`-section of Prometheus configuration. More info: https://prometheus.io/docs/prometheus/latest/configuration/configuration/#metric_relabel_configs","properties":{"action":{"description":"Action to perform based on regex matching. Default is 'replace'","type":"string"},"modulus":{"description":"Modulus to take of the hash of the source label values.","format":"int64","type":"integer"},"regex":{"description":"Regular expression against which the extracted value is matched. defailt is '(.*)'","type":"string"},"replacement":{"description":"Replacement value against which a regex replace is performed if the regular expression matches. Regex capture groups are available. Default is '$1'","type":"string"},"separator":{"description":"Separator placed between concatenated source label values. default is ';'.","type":"string"},"sourceLabels":{"description":"The source labels select values from existing labels. Their content is concatenated using the configured separator and matched against the configured regular expression for the replace, keep, and drop actions.","items":{"type":"string"},"type":"array"},"targetLabel":{"description":"Label to which the resulting value is written in a replace action. It is mandatory for replace actions. Regex capture groups are available.","type":"string"}},"type":"object"},"type":"array"},"scheme":{"description":"HTTP scheme to use for scraping.","type":"string"},"scrapeTimeout":{"description":"Timeout after which the scrape is ended","type":"string"},"targetPort":{"anyOf":[{"type":"string"},{"type":"integer"}]},"tlsConfig":{"description":"TLSConfig specifies TLS configuration parameters.","properties":{"caConfigMap":{"description":"Selects a key from a ConfigMap.","properties":{"key":{"description":"The key to select.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the ConfigMap or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"},"caFile":{"description":"Path to the CA cert in the Prometheus container to use for the targets.","type":"string"},"caSecret":{"description":"SecretKeySelector selects a key of a Secret.","properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"},"certConfigMap":{"description":"Selects a key from a ConfigMap.","properties":{"key":{"description":"The key to select.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the ConfigMap or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"},"certFile":{"description":"Path to the client cert file in the Prometheus container for the targets.","type":"string"},"certSecret":{"description":"SecretKeySelector selects a key of a Secret.","properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"},"insecureSkipVerify":{"description":"Disable target certificate validation.","type":"boolean"},"keyFile":{"description":"Path to the client key file in the Prometheus container for the targets.","type":"string"},"keySecret":{"description":"SecretKeySelector selects a key of a Secret.","properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}},"required":["key"],"type":"object"},"serverName":{"description":"Used to verify the hostname for the targets.","type":"string"}},"type":"object"}},"type":"object"},"type":"array"},"jobLabel":{"description":"The label to use to retrieve the job name from.","type":"string"},"namespaceSelector":{"description":"NamespaceSelector is a selector for selecting either all namespaces or a list of namespaces.","properties":{"any":{"description":"Boolean describing whether all namespaces are selected in contrast to a list restricting them.","type":"boolean"},"matchNames":{"description":"List of namespace names.","items":{"type":"string"},"type":"array"}},"type":"object"},"podTargetLabels":{"description":"PodTargetLabels transfers labels on the Kubernetes Pod onto the target.","items":{"type":"string"},"type":"array"},"sampleLimit":{"description":"SampleLimit defines per-scrape limit on number of scraped samples that will be accepted.","format":"int64","type":"integer"},"selector":{"description":"A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","items":{"type":"string"},"type":"array"}},"required":["key","operator"],"type":"object"},"type":"array"},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object"}},"type":"object"},"targetLabels":{"description":"TargetLabels transfers labels on the Kubernetes Service onto the target.","items":{"type":"string"},"type":"array"}},"required":["endpoints","selector"],"type":"object"}},"type":"object"}},"version":"v1"}}
>>>>>>> Documentation,example/prometheus-operator-crd,jsonnet/prometheus-operator,pkg/apis/monitoring/v1: regenerate
