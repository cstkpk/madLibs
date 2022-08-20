# Dictionary Database

## Migrations

To create a new migration file, first make sure go migrate cli is installed on your local computer and then run `migrate create -ext sql -dir <path/to/migrations> <file name>`. E.g.

```
migrate create -ext sql -dir db/migrations entries
```

To migrate up or down by a specific number of versions, run `migrate -path <path to file> -database "mysql://<un>:<pw>@tcp(0.0.0.0:3306)/<db name>” <up/down> <# version>`. E.g.

```
migrate -path ./db/migrations -database "mysql://root:root@tcp(0.0.0.0:3306)/dictionary" up 1
```

## Initializing the DB

To initialize the `dictionary` DB, run the `initDB.sh` script from the `api` directory.
