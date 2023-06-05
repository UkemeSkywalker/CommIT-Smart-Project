FROM gitpod/workspace-full

# Install Terraform dependencies, if any
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      #  <dependencies>

# Set the default command to start a new shell (optional)
CMD ["/bin/bash"]
