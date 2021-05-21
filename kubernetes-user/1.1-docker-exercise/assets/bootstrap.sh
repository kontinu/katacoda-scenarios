#!/bin/sh

echo "[$(date)] Starting container ...."
whats_my_ip=$(curl -s ifconfig.me)

# preparing the starting index.html, I know this isnt the best way of doing it, but it is for the sake of exercise
echo """
<!DOCTYPE html>
<head>
    <meta charset=\"UTF-8\">
</head>
<body style=\"text-align: center;font-family:'Courier New' ; \" >
    <h1>
        Hello World 🌎
    </h1>
    <h2>
        My container ID is 🐳 ${HOSTNAME}
    </h2>
    <h2>
        Whats my IP ${whats_my_ip}
    </h2>

</body>
""" > /usr/share/nginx/html/index.html

echo "Starting nginx"
exec nginx -g "daemon off;"

