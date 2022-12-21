# cors-anywhere image

Here , as you can see in docker-compose file , we create an internal bridge network in docker ( named ...) because i do not want to expose CORS port to internet. this bridge network is being shared with the other project that we wanted to use the CORS proxy to call required API from it.
NOT_RECOMENDED: if you want to expose the port to internet you just need to uncoment "port" definition and comment "network" definitions.

*I changed default port of CORS from 80 to 8082




You can send a request with it like following:
```sh
curl --request GET \
  --url http://localhost:8082/http://example.com \
  --header 'origin: *'
```
