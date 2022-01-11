Docker-Git

## Docker Hub
- https://hub.docker.com/r/devcto/git
- 
## 使用说明
```bash
docker pull devcto/git:latest

docker run --rm --name git-alpine -itd devcto/git:latest

docker exec git-alpine git --version

docker exec -it git-alpine sh
```
更多教程请查看 **[WIKI](wiki)**
