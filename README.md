DOCKER com Nextcloud, rodando no Alpine.

Usuário inicial root:OcITj2YTFyfB

VOLUME: /var/lib/nextcloud/data/
VOLUME: /var/log/ DONOS ID=101:101 PERMISSÃO 660

ATUALIZAR CERTIFICADO
certbot certonly --nginx -d nomes.space -n

APAGAR USUÁRIOS Admin ou root
sudo -u nginx php occ user:delete <user>