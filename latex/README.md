# Latex Docker
Runs texmaker GUI on host with full latex distribution.

## Getting Started

### Build Docker and Open Texmaker
```bash
cd latex
docker-compose build
docker-compose up
```

### Add Files to Docker
See docker-compose.yml.  
By default ${HOME}/workspace/latex is mounted to /media/docker/latex.
