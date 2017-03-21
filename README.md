# AWS-VPN
	Playbook to provision EC2 instance in AWS VPC with VPN server, running on Docker.
	
## Prerequisites
The following are present:

- ansible


## Getting Started

```
> ./install.sh
> ./init.sh
> vpn_is_present
# Log in to instance
# > docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki nopass
# > docker run -v $OVPN_DATA:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn
# > docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full CLIENTNAME nopass
# > docker run -v $OVPN_DATA:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient CLIENTNAME > CLIENTNAME.ovpn
# Exit the instance
# User SCP to get ovpn profile, e.g.:
> scp -i /vagrant/tmp/ssh/170320-key.pem ubuntu@35.157.151.5:/home/ubuntu/mbp.ovpn /vagrant/tmp/mbp.ovpn
```

See more details: https://hub.docker.com/r/kylemanna/openvpn/