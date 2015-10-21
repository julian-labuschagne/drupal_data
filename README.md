# Drupal Data Docker Image
Docker image to be used as a data volume for drupal sites.

This will allow data to persist and must be used with --volumes-from switch when running other containers.

You only have to create the container with the run command below it does not need to be running.

**Example**

```
docker create -v /var/www -v /etc/apache2/sites-enabled --name drupal_data julianlab/apache2 /bin/true
```
