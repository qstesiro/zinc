#!/bin/bash

cd web
# 需要先安装
npm install 
npm run build
cd ..

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -v -ldflags="-w -s" -o zinc cmd/zinc/main.go


