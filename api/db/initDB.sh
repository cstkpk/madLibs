# Drop database
mysql -u$MARIA_USERNAME -p$MARIA_PASSWORD -h$MARIA_HOST -e "DROP DATABASE IF EXISTS dictionary"
# Recreate database
mysql -u$MARIA_USERNAME -p$MARIA_PASSWORD -h$MARIA_HOST -e "CREATE DATABASE dictionary"
migrate -path ./db/migrations -database "mysql://$MARIA_USERNAME:$MARIA_PASSWORD@tcp($MARIA_HOST:$MARIA_PORT)/dictionary" up
# Seed database
mysql -u$MARIA_USERNAME -p$MARIA_PASSWORD -h$MARIA_HOST < ./db/seed/entries.seed.sql