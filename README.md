# whoopsmonitor-check-mariadb-connect

Check if the connection to MariaDB is fine.

## Environmental variables

-   `WM_CONNECTION_STRING` - MariaDB onnection string

## Example

There is an example of the check at Whoops Monitor configuration tab or the `.env` file.

```yaml
WM_CONNECTION_STRING=mariadb://user:password@localhost:3306/test
```

## Output

-   Exit code `0` - Connection is ok.
-   Exit code `2` - Some error appeared.

## Build

```sh
docker build -t whoopsmonitor-check-mariadb-connect .
```

## Run

```bash
docker run --rm --env-file .env whoopsmonitor-check-mariadb-connect
```
