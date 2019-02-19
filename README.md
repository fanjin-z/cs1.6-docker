## [Valve's Game](https://store.steampowered.com/developer/valve) Dedicated Server Images
*NOT AN OFFICIAL IMAGE.*<br/>
Includes dedicated server Dockerfile for several FPS games developed by value.

## Counter-Strike: Global Offensive
### Pull from DockerHub
```bash
docker pull fnjn/csgo:latest
docker run -d -p 27016:27016 csgo:latest
```

### Build from Dockerfile
```bash
git clone git@github.com:Fnjn/ValvesGames-Docker.git
cd ValvesGames-Docker/csgo
docker build . -t csgo:latest
docker run -d -p 27016:27016 csgo:latest
```

### Configuration
Configure Setting in `settings.json`.<br/>

## Counter-Strike: 1.6
### Pull from DockerHub
```bash
docker pull fnjn/cs1.6:latest
docker run -d -p 27016:27016 csgo:latest
```

### Build from Dockerfile
```bash
git clone git@github.com:Fnjn/ValvesGames-Docker.git
cd ValvesGames-Docker/cs1.6
docker build . -t cs1.6:latest
docker run -d -p 27016:27016 cs1.6:latest
```

### Configuration
Configure Setting in `settings.json`.<br/>



## Counter-Strike: Source
TODO

## Team Fortress 2
TODO

## Garry's Mod
TODO

<br/>**Report any problem to issue page.**<br/>
