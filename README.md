# AWS-VPN
	Playbook to provision EC2 instance in AWS VPC with VPN server, running on Docker.
	
## Prerequisites
The following are present:

- ansible

## Workflow

1. Docker is present on VPN instance
2. Pull image kylemanna/openvpn
3. Generate openvpn config (`ovpn_genconfig`)
4. Generate certificates (`ovpn_initpki`)
5. Start openvpn
6. Retrieve client configuration (`ovpn_getclient`)
7. Copy client configuration to client


## Getting Started

```
> ./install.sh
> ./init.sh
> vpn_is_present
# Log in to instance
# > docker run -v openvpn_data:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki
# > docker run -v openvpn_data:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn
# > docker run -v openvpn_data:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full CLIENTNAME nopass
# > docker run -v openvpn_data:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient CLIENTNAME > CLIENTNAME.ovpn
# Exit the instance
# User SCP to get ovpn profile, e.g.:
> scp -i /vagrant/tmp/ssh/170320-key.pem ubuntu@35.157.151.5:/home/ubuntu/mbp.ovpn /vagrant/tmp/mbp.ovpn
```

See more details: https://hub.docker.com/r/kylemanna/openvpn/

## Alternate Config
https://github.com/kylemanna/docker-openvpn/blob/a17dfd7808ec232232265c9f394f090806e2e830/docs/advanced.md

```
# Log in to instance
# > docker run -v openvpn_data:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki
# > docker run -v openvpn_data:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn
# > docker run -v openvpn_data:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full CLIENTNAME nopass
# > docker run -v openvpn_data:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient CLIENTNAME > CLIENTNAME.ovpn
# Exit the instance
# User SCP to get ovpn profile, e.g.:
> scp -i /vagrant/tmp/ssh/170320-key.pem ubuntu@35.157.151.5:/home/ubuntu/mbp.ovpn /vagrant/tmp/mbp.ovpn
```