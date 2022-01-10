# 首先编译web
cd web
npm install
npm run build
cd ..

# 编译go
alias gob='CGO_ENABLED=0 go build -v -gcflags "all=-N -l" -o zinc cmd/zinc/main.go'
alias dlv='dlv exec ./zinc --init=.dbg/zinc.dlv'

mkdir -p data
export FIRST_ADMIN_USER=admin
export FIRST_ADMIN_PASSWORD=Complexpass#123
