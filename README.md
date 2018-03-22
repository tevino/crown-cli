# corwn-cli in Docker

## Usage

```shell
$ mkdir crown
$ cat <<EOF > crown/env
export USER=YOUR_USERNAME
export PWD=YOUR_PASSWORD
export NODE=THE_NODE_NUMBER
export PAC_PROXY=PROXY_HOSTNAME_USED_IN_PAC
EOF crown/env
$ docker run -v crown:/crown -p 127.0.0.1:1235:1235 -p 127.0.0.1:61099:61099 tevin/crown-cli
```
