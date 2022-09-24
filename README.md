# Local WordPress server setup with Docker

A local server setup for running WordPress with Docker

### Requirements
- [Docker](https://www.docker.com/get-started/)
- [mkcert](https://github.com/FiloSottile/mkcert) for making locally-trusted development certificates.

### Features
- NGINX with custom config file
- SSL
- WordPress
- MariaDB

### Instructions
1. Copy `````.env.example````` to ```.env``` and edit your preferences.
2. Run the ```create-cert.sh``` script in the ```bin``` folder with ```sh create-script.sh``` commando. This script will create the certificates for your custom ```DOMAIN``` and place them in the ```certs``` folder.
3. Make sure your /etc/hosts file has a record for the used domains:
```
sudo nano /etc/hosts
```
Add your selected domain like this:
```
127.0.0.1 domain.local
 ```
4. Move to the root folder (where the ```docker-compose.yml``` file lives) and run ```docker-compose up --build``` to build your containers.

### Todo
- [ ] Install WP-CLI
- [ ] Install SMTP server