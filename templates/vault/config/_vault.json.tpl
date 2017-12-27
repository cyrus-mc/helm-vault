{
  "listener": {
    "tcp": {
      "address": "0.0.0.0:8200",
      "tls_disable": 1
    }
  },
  "default_lease_ttl": "168h",
  "max_lease_ttl": "720h",
  "storage": {
    "etcd": {
      "address": "http://{{ template "shortname" . }}-etcd-client:{{ .Values.etcd.Port }}",
      "etcd_api": "v2",
      "ha_enabled": "1",
      "redirect_addr": "http://{{ template "shortname" . }}"
    }
  }
}
