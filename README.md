## Gemini CLI in Docker (for Headless Environments)

This project provides a simple way to run the Gemini CLI in a Docker container, especially useful on headless environments like Raspberry Pi.

### ✅ Features

- Run Gemini CLI in Docker without polluting your host environment
- Designed for headless setups (e.g., Raspberry Pi)

### 🚀 Quick Start

```bash
docker compose build
docker compose up -d
docker compose exec gemini bash

# In container
gemini --show_memory_usage
```
### ⚠️ One-Time Setup (on GUI-enabled machine)

Due to Google's login flow, you need to authenticate once on a device with a graphical interface (e.g., macOS):

```bash
mkdir gemini-auth && cd gemini-auth
npm install @google/gemini-cli
./node_modules/.bin/gemini
```
After logging in, a .gemini directory will be created in your home directory. Copy this directory to your headless device (e.g., Raspberry Pi) using scp.

> Note: Replace pi@raspberrypi.local and /path/to/gemini-cli-docker/ with your actual username, hostname, and path.

```bash
scp -r ~/.gemini pi@raspberrypi.local:/path/to/gemini-cli-docker/
```
That's it — your headless device is now ready to use Gemini CLI inside Docker.
