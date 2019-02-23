##  Counter-strike 1.6 Dedicated Server Images
*NOT AN OFFICIAL IMAGE.*<br/>

### Pull from DockerHub
```bash
docker pull fnjn/cs1.6:latest
docker run -d -p 27015:27015 cs1.6:latest
```

### Build from Dockerfile
```bash
git git@github.com:Fnjn/cs1.6-docker.git
cd cs1.6-docker
docker build . -t cs1.6:latest
docker run -d -p 27015:27015 cs1.6:latest
```

### Configuration
Configure server setting in `cfg/server.cfg`.<br/>
Add banned IP in `cfg/listip.cfg`.<br/>
Add banned users in `cfg/banned.cfg`.<br/>

### Example
Run bomb-defuse mode on de_dust2 with maximum 32 players.
```
hlds/hlds_run -game cstrike +maxplayers 32 +map de_dust2 +hostname "Counter-Strike Dedicated Server"
```
*note: first exec after setup usually fails, simply run the command again.*

<br/>**Report any problem to issue page.**<br/>
