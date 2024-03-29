# NGINX Web Server: Serving Static Content

## Overview:
NGINX is a high-performance open-source web server renowned for its efficiency in serving static content. Originally developed to address the C10k problem (handling 10,000 simultaneous connections), NGINX has evolved into a versatile solution for web serving, reverse proxying, load balancing, and more. Its lightweight architecture and asynchronous event-driven approach make it ideal for serving static files efficiently.

## Purpose:
NGINX is primarily used as a web server to deliver static content swiftly and reliably. Its key purposes include:
- **Efficient Static Content Serving:** NGINX excels at serving static files such as HTML, CSS, JavaScript, images, and videos with minimal resource utilization, making it ideal for hosting websites, blogs, and media files.
- **Web Server:** NGINX acts as a robust and scalable web server, handling HTTP requests efficiently while ensuring high availability and low latency.

## Core Components and Architecture:
NGINX's architecture is built around an event-driven model, featuring:
- **Master Process:** Responsible for managing worker processes, configuration loading, and signal handling.
- **Worker Processes:** Handle client connections and execute requests asynchronously, allowing NGINX to handle a large number of concurrent connections efficiently.

## Web Serving: Serving Static Content Efficiently:
NGINX is optimized for serving static content, offering several advantages:
- **Asynchronous I/O:** NGINX's event-driven architecture enables it to handle numerous concurrent connections efficiently without creating separate threads or processes for each connection.
- **File Caching:** NGINX can cache static files in memory, reducing disk I/O and improving response times for frequently accessed content.
- **Gzip Compression:** NGINX supports on-the-fly compression of static files using gzip, reducing bandwidth usage and speeding up content delivery to clients.

## Installation on Raspberry Pi:
Installing NGINX on a Raspberry Pi (Raspbian OS) is straightforward using the package manager:
```bash
sudo apt update
sudo apt# NGINX Web Server: Basic Configuration
```

## Basic Configuration Settings:

After installation, basic configuration adjustments may include:

- **Document Root:** Define the directory where static files will be served from (`/var/www/html` by default).
- **Index File:** Specify the default file to serve when a directory is accessed (e.g., `index.html`).
- **Server Blocks:** Configure virtual hosts to host multiple websites on the same server if needed.

## Configuration Files Overview:

NGINX configuration files typically include:

- **nginx.conf:** Main configuration file, specifying global settings and including other configuration files.
- **sites-available/*:** Directory containing individual configuration files for virtual hosts.
- **sites-enabled/*:** Symbolic links to enabled virtual host configuration files.

# Configuring NGINX for Local Network Access

To access the NGINX-served webpage within your local network using the Raspberry Pi's IP address, follow these steps:

1. Open the NGINX configuration file:

   ```bash
   sudo nano /etc/nginx/sites-available/default


2. Locate the server_name directive within the server block and replace localhost with the Raspberry Pi's IP address or hostname:
nginx
```
server_name <Raspberry_Pi_IP>;
```
3.Save the configuration file and exit the text editor.
4.Restart NGINX to apply the changes:
```
sudo systemctl restart nginx
```
Now, you can access the NGINX-served webpage from any device on your local network by entering the Raspberry Pi's IP address or hostname in the web browser.
