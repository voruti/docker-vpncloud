# Docker VpnCloud

Fork of <https://github.com/dexpops/docker-vpncloud>.

Docker image for <https://vpncloud.ddswd.de>.

## Generate config file

To use VpnCloud's interactive configuration wizard run the following command:

```bash
docker-compose run --entrypoint "vpncloud config" vpncloud
```
