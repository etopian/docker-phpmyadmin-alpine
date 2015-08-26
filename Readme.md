# docker phpmysqladmin using alpine

Created to see how small phpmyadmin would be on alpine. I'm sure you can make it smaller though by excluding some of the php
libaries and using php's build in webserver. Currently 70.79 MB and without nginx its 69.48 MB.

Example

```
docker run -d --restart=always -e PMA_USERNAME=admin -e PMA_PASSWORD=password --link mysql:mysql --name phpmyadmin -p 8000:80 timhaak/phpmyadmin-alpine
```

If you haven't created the pma tables and db. Create a db called *phpmyadmin* or what you've set the env variable to.
Select the db and then Options. Click the find out why link. Then click the Create missing link.


Environmental variables available

| Variable        | Default     | Description                                       |
| --------------- |:-----------:| -------------------------------------------------:|
| PMA_SECRET      | <random>    | Used to encrypt cookies you may want to set this  |
| PMA_DB          | phpmyadmin  | Db that has pma's tables                          |
| PMA_USERNAME    | pma         | Username that pma uses                            |
| PMA_PASSWORD    | password    | Password that pma uses                            |
| MYSQL_HOSTNAME  | mysql       | Hostname that pma used to find the db server      |
