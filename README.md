# Plastic SCM Client Docker Image

This Docker image provides a ready-to-use environment for running Plastic SCM Client on Linux. Plastic SCM is a version control system designed to handle large-scale development projects, offering features like branching, merging, and distributed development workflows.

## Features

- Based on the latest Ubuntu release for compatibility and security.
- Includes the Plastic SCM client with complete functionality.
- Configured to mount project directories and Plastic SCM configuration files for seamless integration with your development environment.
- Supports graphical interface access through X11 forwarding for ease of use.

## Usage

1. **Pull the image from Docker Hub:**

   ```
   docker pull jonathanruiz3/plasticscm-client
   ```

2. **Run the container with appropriate volume mounts and environment variables:**

Remember to replace [your plastic project directory] with the loacal path to the directory where your plastic projects are stored
   ```
   docker run --privileged --network host --rm -it -v $HOME/Projects:/Projects -v ~/.plastic4:$HOME/.plastic4 -v ~/.Xauthority:$HOME/.Xauthority -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=:0 --user $(id -u):$(id -g) --workdir="$HOME" --volume="/etc/group:/etc/group:ro" --volume="/etc/passwd:/etc/passwd:ro" --volume="/etc/shadow:/etc/shadow:ro" jonathanruiz3/plasticscm-client sh -c "plasticgui" 
   ```

   **Note:** Ensure that you have Docker installed and configured on your system before using this image.


