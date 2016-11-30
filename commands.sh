## QL

export GOPATH=/opt/go

go get github.com/cznic/ql/ql

/opt/go/bin/ql -db /var/lib/rkt/cas/db/ql.db -schema "."
/opt/go/bin/ql -db /var/lib/rkt/cas/db/ql.db "select * from aciinfo"





## NGINX

rkt --debug run --insecure-options=image --volume config,kind=host,source=/opt/nginx.conf --mount volume=config,target=/etc/nginx/nginx.conf docker://nginx
