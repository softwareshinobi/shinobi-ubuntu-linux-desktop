# Shinobi Ubuntu Linux Desktop

A custom Ubuntu-based virtual desktop environment (LXDE) delivered via Docker. This image is pre-configured with media tools, remote access capabilities, and a web-based interface.

![Shinobi Ubuntu Linux Desktop](cover.png)

## 🚀 Quick Start

### 1. Configuration

This project uses a `.env` file for configuration. Create a file named `.env` in the root directory:

```env
# System Configuration
PROJECT_HOSTNAME=embraer
TIMEZONE=America/New_York

# Security & Credentials
VNC_USER=shinobi
VNC_PASSWORD=shinobi
WEB_HTTP_PASSWORD=shinobi

# Port Mapping
PORT_SSH=5922
PORT_WEB=5980
PORT_VNC=5900

```

### 2. Build and Run

Execute the `compose.bash` script to handle the container lifecycle. This script performs a clean rebuild and starts the service in detached mode.

```bash
chmod +x compose.bash
./compose.bash

```

### 3. Verification

To ensure your `.env` variables are being injected correctly into the Docker configuration, run:

```bash
docker compose config

```

---

## 🔑 Accessing the Desktop

Once the container is running, you can access the environment using the following methods:

| Access Method | Address / Command | Description |
| --- | --- | --- |
| **Web Browser** | [http://localhost:5980](https://www.google.com/search?q=http://localhost:5980) | Full desktop via noVNC (Port 5980) |
| **VNC Client** | `localhost:5900` | Native performance via VNC protocol |
| **SSH Terminal** | `ssh shinobi@localhost -p 5922` | Secure command-line access |

---

## 🛠️ Included Software

The provisioning process automatically installs and configures:

* **Video Editing:** Kdenlive, Shotcut
* **Remote Desktop:** Remmina (RDP/VNC client)
* **System Utilities:** Git, Vim, SSH Server, RecordMyDesktop, Cron

---

## ⚙️ Environment Variables Reference

If you choose to modify the `compose.yaml` directly or update the `.env` file, these are the key variables:

* `USER`: The system username and login for HTTP/VNC.
* `PASSWORD`: The sudo password for the user and VNC access.
* `HTTP_PASSWORD`: The password for the Nginx web-access layer.
* `TZ`: System timezone (e.g., `America/New_York`).

---

## 🛡️ Security Best Practices

1. **Change Default Credentials:** Never run this image on a public-facing server with the default `shinobi` credentials.
2. **Ignore Secrets:** Ensure your `.env` file is added to your `.gitignore`:
```bash
echo ".env" >> .gitignore

```

3. **SSH Security:** If you do not require command-line access, consider removing the SSH port (`5922`) from your `compose.yaml` to reduce the attack surface.
