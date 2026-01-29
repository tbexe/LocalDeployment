# The Last Fork Local Deployment And Tests
Repository configured To Pull from all Relevant repos for local deployment of entire architecture for easy local deployment and testing.

# Requirements
-  **Docker Desktop**
- **Git**
# Requirements for running Tests
- **Java 17+** 
- **Python 3.9+** 

# Docker Installation

### windows
- Download and install [Docker Desktop for Windows](https://docs.docker.com/desktop/install/windows-install/).
- Ensure WSL 2 (Windows Subsystem for Linux) is enabled during installation.

### MacOs
- Download and install [Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/).

### Linux
- Install Docker Engine following the official guide for your distribution: [Docker Engine Installation](https://docs.docker.com/engine/install/).
- Ensure you also install `docker-compose` if it is not included.

# Run Local Deployment

This will clone all microservices (`UserService`, `ProductService`, `APIGateway`, `ForecastService`, `WebsiteFrontend`) and start them in Docker containers.

### windows
1. Double-click or run the setup script to clone/update repositories:
   ```cmd
   setup.bat
2. Start the application using Docker Compose:
    ```DOS
   docker-compose up --build
3. Access the application:
- Frontend: http://localhost
- API Gateway: http://localhost:8080

### MacOs / Linux
1. Make the setup script executable:
   ```Bash
   chmod +x setup.sh
   ./setup.sh
2. Start the Application using Docker Compose:
   ```Bash
   docker-compose up --build
   3. Access the application:
- Frontend: http://localhost
- API Gateway: http://local

# Run Tests

### Windows
    ```DOS
    test-all.bat

### MacOs / Linux
```Bash
    chmod +x test-all.sh
    ./test-all.sh
