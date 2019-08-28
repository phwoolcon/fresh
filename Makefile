build:
	GOOS=linux GOARCH=amd64 GO111MODULE=on go build -mod=vendor -v \
		-ldflags '-s -w' -o build/fresh-linux-x64
	upx -9 build/fresh-linux-x64
clean:
	rm -rf build
