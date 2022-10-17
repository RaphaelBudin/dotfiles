#	Lista de comandos para consulta

# Mostra status dos containes
docker ps -a



########	POSTGRESQL

#Baixar postgres
docker pull postgres

#Comando inicial postgres
sudo docker run --name postgresql -e POSTGRES_USER=admin -e POSTGRES_PASSWORD=123 -p 5432:5432 -v /data:/var/lib/postgresql/data -d postgres
#Explicação
# run 	--> 	roda a imagem
# --name postgresql --> nome do container
# -e POSTGRES_USER=admin 	--> nome de usuário único para o banco de dados
# -e POSTGRES_PASSWORD=123	--> senha para acesso ao banco de dados
# -p 5432:5432		--> mapeia as portas do HOST:CONTAINER
# -v	-->  sincroniza os dados armazenados no postgres no diretório local, permitindo acesso mesmo com o container inativado
# -d	--> roda no modo 'detached'
# postgres 	--> nome da imagem docker que baixamos


#Iniciar container Postgresl
docker start postgresqldb

#Para container Postgresl
docker stop postgresqldb

##############################

#####		PGADMIN
#Baixar PGAdmin
docker pull dpage/pgadmin4:latest

#Executar container PGAdmin
docker run --name pgadmin -p 82:80 -e 'PGADMIN_DEFAULT_EMAIL=teste@teste.com' -e 'PGADMIN_DEFAULT_PASSWORD=123' -d dpage/pgadmin4

