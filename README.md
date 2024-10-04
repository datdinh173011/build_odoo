### For Developer

1. Build and Start the Containers:
    Run the following command in the directory containing your docker-compose.yml and Dockerfile:
    ```bash
    $ docker-compose up --build -d
    ```

    Now the server is running on: http://localhost:8069

2. DumpDB example:
    ```bash
    $ docker cp backup.dump build_odoo-db-1:/backup.dump
    docker exec -i build_odoo-db-1 pg_restore --clean -U odoo -d postgres /backup.dump 
    ```


3. Database Migration Issues:

    ```bash
    $ docker-compose exec web bash
    $ odoo -i base -d odoo --stop-after-init --db_host=db -r odoo -w odoo
    ```

    Restart using docker-compose
