apply:
	kubectl apply -f 1-echo-server.yaml
	kubectl apply -f 2-gateway.yaml
	kubectl apply -f 3-gateway-virtual-service.yaml
	kubectl apply -f 4-redis-config.yaml
	kubectl apply -f 5-redis.yaml
	kubectl apply -f 6-filter-global-jwt.yaml
	kubectl apply -f 7-filter-global-lua.yaml

delete:
	kubectl delete -f 1-echo-server.yaml
	kubectl delete -f 2-gateway.yaml
	kubectl delete -f 3-gateway-virtual-service.yaml
	kubectl delete -f 4-redis-config.yaml
	kubectl delete -f 5-redis.yaml
	kubectl delete -f 6-filter-global-jwt.yaml
	kubectl delete -f 7-filter-global-lua.yaml