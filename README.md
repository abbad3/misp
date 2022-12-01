# MISP Docker images

Estas imagens foram baseadas no trabalho de CoolAcid's MISP Docker images (https://github.com/coolacid/docker-misp) 

### Pré-requisitos

Instalação do docker e docker-compose conforme instruções contidas em https://docs.docker.com/compose/install/


### Execução 

- Inicialize o docker swarm:

docker swarm init --advertise-addr=$(hostname -i)

- Crie o arquivo ./senha-mysql-root com a senha desejada para o usuário root

- Crie o arquivo ./senha-mysql-misp com a senha desejada para o usuário misp

- Crie os segredos mysql_root_password e mysql_misp_password a partir dos arquivos de senha:

docker secret create mysql_root_password ./senha-mysql-root

docker secret create mysql_misp_password ./senha-mysql-misp

- Apague os arquivos ./senha-mysql-root e ./senha-mysql-misp

- Crie uma pilha chamada misp a partir do docker-compose.yml:
 
docker stack deploy -c docker-compose.yml misp


### Acesso

-   Login to `https://localhost`
    -   User: `admin@admin.test`
    -   Password: `admin`

### Criação de imagens

- Para criar suas próprias imagens, use os arquivos misp/Dockerfile e misp-modules/Dockerfile
