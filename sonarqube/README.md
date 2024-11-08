# Sonarqube Server

Sample *Sonarqube* server deployment with docker-compose for application source static analysis

## Usage

1. Launch server with ``docker compose up -d sonarserver``
2. Access from localhost to http://127.0.0.1:9000 and credentials: ``admin/admin``
3. Create a new project and generate a login token
4. Edit ``docker-compose.yaml``:
    * Replace sample login token with the generated on previous step
    * Replace your project source folder in volumen property
5. Add a [sonar-project.properties](sonar-project.properties) file to your project source folder and customize it with your sonarqube **project key** and other configuration options
6. Launch *Sonar Scaner* with ``docker compose up sonarscanner``
7. Access to the Sonarqube server to review the results

Additional info in https://docs.sonarqube.org/latest/setup/get-started-2-minutes/