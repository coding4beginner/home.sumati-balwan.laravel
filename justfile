default:
    cat justfile

build-no-cache:
    docker build -t laravel --no-cache .devcontainer

build:
    docker build -t laravel            .devcontainer    

run:
    docker run -it --rm -v $PWD:/workspaces:rw laravel /bin/bash
