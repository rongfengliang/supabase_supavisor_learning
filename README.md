# supabase supavisor learning

## init tenant

* init tenant db command

```code
curl  -X PUT \
  'http://localhost:4000/api/tenants/dev_tenant' \
  --header 'Accept: */*' \
  --header 'User-Agent: Thunder Client (https://www.thunderclient.com)' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJvbGUiOiJhbm9uIiwiaWF0IjoxNjQ1MTkyODI0LCJleHAiOjk5OTk5OTk5OTl9.gntAxv50UrEPGAmL8a03zFMpDLt81QDHF8O5303X9l8' \
  --header 'Content-Type: application/json' \
  --data-raw '{
  "tenant": {
    "db_host": "db",
    "db_port": 5432,
    "db_database": "postgres",
    "ip_version": "auto",
    "enforce_ssl": false,
    "require_user": false,
    "auth_query": "SELECT rolname, rolpassword FROM pg_authid WHERE rolname=$1;",
    "users": [
      {
        "db_user": "postgres",
        "db_password": "postgres",
        "pool_size": 20,
        "mode_type": "transaction",
        "is_manager": true
      }
    ]
  }
}'

curl  -X PUT \
  'http://localhost:4000/api/tenants/dev_tenantv1' \
  --header 'Accept: */*' \
  --header 'User-Agent: Thunder Client (https://www.thunderclient.com)' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJvbGUiOiJhbm9uIiwiaWF0IjoxNjQ1MTkyODI0LCJleHAiOjk5OTk5OTk5OTl9.gntAxv50UrEPGAmL8a03zFMpDLt81QDHF8O5303X9l8' \
  --header 'Content-Type: application/json' \
  --data-raw '{
  "tenant": {
    "db_host": "dbv1",
    "db_port": 5432,
    "db_database": "postgres",
    "ip_version": "auto",
    "enforce_ssl": false,
    "require_user": false,
    "auth_query": "SELECT rolname, rolpassword FROM pg_authid WHERE rolname=$1;",
    "users": [
      {
        "db_user": "postgres",
        "db_password": "postgres",
        "pool_size": 20,
        "mode_type": "transaction",
        "is_manager": true
      }
    ]
  }
}'
```

* connect 

```code
psql postgresql://postgres.dev_tenant:postgres@localhost:6543/postgres
psql postgresql://postgres.dev_tenantv1:postgres@localhost:6543/postgres

```