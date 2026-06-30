

# 📦 O11-OTT-V4 Installer

This project provides a simple installation script to set up the **O11-OTT-V4** environment automatically.

## 🚀 Quick Install

Run the following command in your terminal:

```bash
apt updates
apt install curl -y
curl -L -o /tmp/install.sh "https://raw.githubusercontent.com/sohag1192/O11-OTT-V4/refs/heads/main/install.sh" && bash /tmp/install.sh && rm /tmp/install.sh
```

### 🔍 What this does
1. **Downloads** the latest `install.sh` script from GitHub into `/tmp`.
2. **Executes** the script with `bash` to install and configure required dependencies.
3. **Removes** the temporary installer file after execution.

## ⚙️ Requirements
- Ubuntu/Debian-based Linux system
- Root or sudo privileges
- Internet connection

## 📂 Installed Components
Depending on the script contents, the installer will:
- Update system packages
- Install required dependencies (Node.js, PM2, FFmpeg, etc.)
- Download and configure project files
- Start services automatically

## 🛠️ Usage
After installation:
- The server should be running under **PM2**.
- You can manage it with:
  ```bash
  pm2 list
  pm2 restart licserver
  pm2 logs licserver
  ```

## 🔒 Notes
- Always review the script before running it to ensure safety.
- Run inside a controlled environment (e.g., VM or test server) if you’re unsure.

