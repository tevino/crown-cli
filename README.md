# corwn-cli in Docker

## Usage

```shell
$ mkdir crown
$ echo 'YOUR_USERNAME YOUR_PASSWORD' > crown/credential
$ docker run -v crown:/crown -p 127.0.0.1:1235:1235 tevin/crown-cli
```
