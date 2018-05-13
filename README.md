Install RedHat OpenShift Origin in your development box.

## Installation

1. Create a VM as explained in https://youtu.be/aqXSbDZggK4 (this video) by Grant Shipley

2. Define mandatory variables for the installation process
sh prepare-server.sh

3. run install script
curl https://raw.githubusercontent.com/concrain/installcentos/master/install-openshift.sh | /bin/bash

4. login to server
oc login -u ${USERNAME} -p ${PASSWORD} https://console.$DOMAIN:$API_PORT/

5. set router
[ netgear C7000v2 ]
	portforward
	netgear C7000v2
	http://192.168.0.2/
	Advanced > Advanced Setup > Port Forwarding / Port Triggering > Add Custom Service
		->
		service-name=<domain-name>
		ipaddress=<server-static-ip>
		port-range=80

		service-name=<domain-name>
		ipaddress=<server-static-ip>
		port-range=443

		service-name=<domain-name>
		ipaddress=<server-static-ip>
		port-range=8443		
		<-

6. verify ports are working:
	https://ifconfig.co/
	https://ifconfig.co/json
	->
	{
	  "ip": "73.15.12.167",
	  "ip_decimal": 1225723047,
	  "country": "United States",
	  "country_iso": "US",
	  "city": "San Jose",
	  "hostname": "c-73-15-12-167.hsd1.ca.comcast.net"
	}
	<-
	https://www.gandi.net/en/dashboard/dns
		# your ipaddress should match

7. verify external access:
https://console.concrain.io
