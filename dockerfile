FROM ubuntu:20.04
RUN DEBIAN_FRONTEND=noninteractive apt update && apt install -y nginx
RUN rm -rf /var/www/html/*
COPY index.html /var/www/html/index.html
ENTRYPOINT ["nginx", "-g", "daemon off;"]

# FROM ubuntu:20.04

# # Install Nginx
# RUN DEBIAN_FRONTEND=noninteractive apt update && apt install -y nginx

# # Remove default Nginx page
# RUN rm -rf /var/www/html/*

# # Copy your custom index.html into the Nginx directory
# COPY index.html /var/www/html/index.html

# # Create a script to display the container's IP address
# RUN echo '#!/bin/bash \n'\
#      'ip_address=$(hostname -I | awk "{print \$1}") \n'\
#      'echo "Container IP Address: $ip_address" \n'\
#      'nginx -g "daemon off;"' > /show_ip_and_run.sh

# # Give execution permission to the script
# RUN chmod +x /show_ip_and_run.sh

# # Set the script as the entrypoint
# ENTRYPOINT ["/show_ip_and_run.sh"]
