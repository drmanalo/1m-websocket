simple-server:
	go run simple/server.go

server:
	go run optimise_gobwas/server.go optimise_gobwas/epoll.go

client:
	go build chargepoint.go

pprof-heap:
	go tool pprof http://localhost:6060/debug/pprof/heap

pprof-goroutine:
	go tool pprof http://localhost:6060/debug/pprof/goroutine

5000-clients:
	./chargepoint -conn 5000

10k-clients:
	./chargepoint -conn 10000

28k-clients:
	./chargepoint -conn 28000

40k-clients:
	./chargepoint -conn 40000

1M-clients:
	./chargepoint -conn 1000000

tidy:
	go mod tidy

.PHONY: client server tidy
