<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_ct"></a> [ct](#requirement\_ct) | 0.11.0 |
| <a name="requirement_matchbox"></a> [matchbox](#requirement\_matchbox) | 0.5.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_matchbox"></a> [matchbox](#provider\_matchbox) | 0.5.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [matchbox_group.default](https://registry.terraform.io/providers/poseidon/matchbox/0.5.2/docs/resources/group) | resource |
| [matchbox_group.k3s_agent](https://registry.terraform.io/providers/poseidon/matchbox/0.5.2/docs/resources/group) | resource |
| [matchbox_group.k3s_server](https://registry.terraform.io/providers/poseidon/matchbox/0.5.2/docs/resources/group) | resource |
| [matchbox_profile.flatcar-install](https://registry.terraform.io/providers/poseidon/matchbox/0.5.2/docs/resources/profile) | resource |
| [matchbox_profile.k3s](https://registry.terraform.io/providers/poseidon/matchbox/0.5.2/docs/resources/profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_disk"></a> [disk](#input\_disk) | sda or vda | `string` | `"/dev/vda"` | no |
| <a name="input_k3s_agents"></a> [k3s\_agents](#input\_k3s\_agents) | List of agent machine details (unique name, identifying MAC address)<br>[<br>  { name = "agent1", mac = "52:54:00:b2:2f:86", ip = "192.168.1.2"},<br>  { name = "agent2", mac = "52:54:00:c3:61:77", ip = "192.168.1.3"}<br>] | <pre>list(object({<br>    name   = string<br>    mac    = string<br>    ip     = string<br>  }))</pre> | <pre>[<br>  {<br>    "ip": "dummy",<br>    "mac": "dummy",<br>    "name": "dummy"<br>  }<br>]</pre> | no |
| <a name="input_k3s_cluster_domain"></a> [k3s\_cluster\_domain](#input\_k3s\_cluster\_domain) | Cluster default domain base | `string` | `"cluster.local"` | no |
| <a name="input_k3s_database"></a> [k3s\_database](#input\_k3s\_database) | Specify etcd, Mysql, Postgres, or Sqlite | `string` | `"sqlite"` | no |
| <a name="input_k3s_disable_components"></a> [k3s\_disable\_components](#input\_k3s\_disable\_components) | Do not deploy packaged components (coredns, servicelb, traefik, local-storage, metrics-server). Separated by commas | `list` | `[]` | no |
| <a name="input_k3s_servers"></a> [k3s\_servers](#input\_k3s\_servers) | List of server machine details (unique name, identifying MAC address)<br>[{ name = "server1", mac = "52:54:00:a1:9c:ae", ip = "192.168.1.1"}] | <pre>list(object({<br>    name   = string<br>    mac    = string<br>    ip     = string<br>  }))</pre> | <pre>[<br>  {<br>    "ip": "dummy",<br>    "mac": "dummy",<br>    "name": "dummy"<br>  }<br>]</pre> | no |
| <a name="input_k3s_tls_san"></a> [k3s\_tls\_san](#input\_k3s\_tls\_san) | additional hostnames or IP addresses as Subject Alternative Names on the server TLS cert. separated by commas | `string` | `""` | no |
| <a name="input_k3s_token"></a> [k3s\_token](#input\_k3s\_token) | k3s token (e.g. demd3.sdfkixklcxtmnzf9) | `string` | n/a | yes |
| <a name="input_k3s_version"></a> [k3s\_version](#input\_k3s\_version) | k3s version (e.g. v1.27.3+k3s1) | `string` | `"v1.27.3+k3s1"` | no |
| <a name="input_matchbox_http_endpoint"></a> [matchbox\_http\_endpoint](#input\_matchbox\_http\_endpoint) | Matchbox HTTP read-only endpoint (e.g. http://matchbox.example.com:8080) | `string` | n/a | yes |
| <a name="input_os_version"></a> [os\_version](#input\_os\_version) | version of flatcar | `string` | `"3510.2.5"` | no |
| <a name="input_ssh_authorized_key"></a> [ssh\_authorized\_key](#input\_ssh\_authorized\_key) | SSH public key to set as an authorized\_key on machines | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->