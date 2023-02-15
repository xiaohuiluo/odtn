
## odtn Phase 1.5 Demo

![odtn-demo-topo](assets/imgs/2023-02-15-17-46-50.png)

1. start onos, ternimal devices and OLS devices
   ```bash
   # via docker-compose
   make start
   ```
2. config devices and links
   ```bash
   # please wait for onos to fully start
   make netcfg-device
   make netcfg-link
   ```
3. create connect
   ```bash
   python2.7 execute-tapi-post-call.py 127.0.0.1 tapi-connectivity:create-connectivity-service line-side
   ```
   ![create-conn](assets/imgs/2023-02-15-17-53-49.png)
   ![intents](assets/imgs/2023-02-15-17-50-27.png)
   ![ols-tapi](assets/imgs/2023-02-15-17-51-15.png)
   ![cassini1](assets/imgs/2023-02-15-17-52-21.png)
   ![cassini2](assets/imgs/2023-02-15-17-52-54.png)

4. delete connect
   ```bash
   python2.7 execute-tapi-delete-call.py 127.0.0.1 both
   ```
   ![delete-conn](assets/imgs/2023-02-15-17-54-47.png)



