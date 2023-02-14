pull:
	docker-compose pull
onos_url := http://localhost:8181/onos
onos_curl := curl --fail -sSL --user onos:rocks --noproxy localhost

start:
	docker-compose up -d

stop:
	docker-compose down -t0

restart: stop start

onos-cli:
	ssh -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" -p 8101 onos@localhost

onos-log:
	docker-compose logs -f onos

netcfg-device:
	${onos_curl} -X POST -H 'Content-Type:application/json' \
		${onos_url}/v1/network/configuration -d@./device.json
		
netcfg-link:
	${onos_curl} -X POST -H 'Content-Type:application/json' \
                ${onos_url}/v1/network/configuration -d@./link.json

