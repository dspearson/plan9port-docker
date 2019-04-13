# plan9port-docker
Build plan9port in a docker container.

Running the below commands will build [plan9port](https://github.com/9fans/plan9port.git) inside a Docker container.
Binaries will be copied to bin/ in the current folder.

```bash
git clone https://github.com/dspearson/plan9port-docker.git
cd plan9port-docker
docker build -t plan9port-build .
docker run -v $PWD:/target plan9port-build cp -r /plan9port/bin /target
```
