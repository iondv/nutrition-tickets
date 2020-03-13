node bin/import --src ./applications/nutrition-tickets --ns nutrition-tickets
node bin/setup nutrition-tickets --reset
#node bin/import-data --src ./applications/nutrition-tickets/data --ns nutrition-tickets
node bin/adduser --name demo --pwd ion-demo
node bin/acl --u demo@local --role admin --p full
#export WORKER_COUNT=2
#exec node bin/cluster
exec node bin/www
