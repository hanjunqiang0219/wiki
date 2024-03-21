
# lgp_x86自测环境
ETCD_ADDR_0 = "10.47.140.86:2381,10.47.140.87:2381,10.47.140.97:2381"
EDGE_ADDR_0 = "10.47.140.101:30080"

build:
	go build -o ./bin/client-asset-service ./cmd/client-asset-service/main.go
kill:
	ps -ef | grep  "client-asset-service" | awk '{print $$2}' | xargs kill -9
scp_160:
	make build && scp  ./bin/client-asset-service  hanjunqiang@10.57.95.160:/home/hanjunqiang/xc
