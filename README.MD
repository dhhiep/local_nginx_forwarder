# Local Nginx for Rails App
Forward requests from https://your-domain.com to your rails app (http://localhost:3000)


### Setup environment
1. Add nginx config
    ```
    cp config/default.conf.template  config/default.conf
    ```
2. Replace your ssl cert at ssl_certs
    ```
    ssl_certs/certificate.crt
    ssl_certs/private.key
    ```

3. Build docker NGINX image and start container
    ```
    docker-compose up
    ```

4. Modified the hosts file on macOS (host machine)
    ```
    # /etc/hosts
    127.0.0.1 domain.com
    ```

5. Start your rails app (on macOS)
    ```bash
    rails s -p 3000
    ```

6. Send a request to test
    ```
    curl https://your-domain.com
    ```
