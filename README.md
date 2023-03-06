# AppX Dockerized

This script automates the deployment of a dockerized application, which is compressed in a RAR file, to an Ubuntu server. The application consists of a web application (named "appX") and a Docker configuration file. Once the script is executed, the server will be updated, directories will be created, and the application will be downloaded, installed and will be running.

## Usage

1. Clone the repository: `git clone https://github.com/Burntroll/app-deploy-docker.git`
2. Navigate to the project directory: `cd app-deploy-docker
3. Run the script: `./start-app.sh`

## Getting Started

Before executing the script, ensure that the Ubuntu server is up to date and has internet connectivity. Also, make sure that the `unrar` package is installed on the server, as it is required to extract the compressed files.

## Script Description

The script performs the following actions:

1. Updates and upgrades the Ubuntu server.
2. Download unrar.
3. Creates two directories, `appX` and `docker`.
4. Installs `unrar` package.
5. Copies the `app-web.rar` file to `/tmp`.
6. Extracts the `app-web.rar` file to the `appX` directory.
7. Copies the `docker-compose.yml` file to the `docker` directory.
8. Deletes the `app-web.rar` and `docker-compose.yml` files from the current directory.
9. Changes directory to `docker`.
10. Starts the application using the `docker-compose` command.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Conclusion

This script simplifies the deployment of a dockerized application to an Ubuntu server by automating several manual steps. It is important to note that the script assumes that the application is compatible with the Ubuntu server and that Docker is properly configured on the server.

