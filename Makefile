provider_name="terraform-provider-url"
provider_version="0.1"

provider_file_name="$(provider_name)_v$(provider_version)"

build:
	CGO_ENABLED=0 go build -o $(provider_file_name) -tags netgo -a -v
	chmod +x $(provider_file_name)

format:
	go fmt

run: build
	./$(provider_file_name)

all: build
