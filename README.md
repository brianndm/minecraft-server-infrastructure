# Minecraft Server Infrasturcture

A self-hosted, modded Minecraft server deployed on Google Cloud Platform. This project involved provisioning cloud infrastructure, configuring a Debian Linux environment, managing persistent storage, and optimizing a multiplayer server.

## Architecture and Infrasturcture

- Cloud Provider: Google Cloud Platform (GCP)
- Compute: Google Compute Engine
- Machine Type: e2-custom-4-10240
- Resources: 4 vCPUs | 10 GB RAM
- OS: Debian GNU/Linux
- Memory: 10 GB Ram (~ 7 GB allocated)
- Boot Disk: 10 GB SSD
- Persistent Storage: 50 GB SSD
- Networking: External connectivity (cross platform) and firewall config

## Provisioning

### VM Config

- Provisioned a Compute Engine VM to host the server.
- Selected the machine config and allocated compute resources for the workload.
- Configured the OS and boot disk.
- Set up external network connectivity for remote access for both Java and Bedrock versions.

### Storage Config

- Attached a dedicated persistent SSD disk for data.
- Disk was prepared for use within Debian.
- Formatted and mounted the storage volume for server files and world data.
- Separated server data from the OS's boot storage.

### Linux Enviornment

- Connected to the VM through SSH.
- Configured the Debian environment and installed required dependencies.
- Set up the Minecraft server and supporting software.
- Managed server files and config through Linux.

## Server Config and Optimization

### Mods

- Installed mods through the Linux enviornment.
- Customized server functionality.
- Managed the compatibility of the modded enviornment as both Java and Bedrock versions need to work.

### Networking

- Configured network access for external Minecraft clients from both Java and Bedrock editions.
- Worked with cloud firewall rules and the server's network requirements.

## Tech Used

Google Cloud | Compute Engine | Debian Linux | SSH | Persistent SSD | Java | C++ | Networking

## Notes

- Geyser reports a NetherNet port conflict because RakNet and NetherNet are configured to the same UDP port. Bedrock connections are working however so this warning does not prevent Bedrock players from joining. May fix this non issue in the future.
