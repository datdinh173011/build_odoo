### For Developer

1. Build and Start the Containers:
    Run the following command in the directory containing your docker-compose.yml and Dockerfile:
    ```bash
    $ docker-compose up --build -d
    ```

    Now the server is running on: http://localhost:8069

3. Database Migration Issues:

    ```bash
    $ docker-compose exec web bash
    $ odoo -i base -d odoo --stop-after-init --db_host=db -r odoo -w odoo
    ```

    Restart using docker-compose