# DockerFilePhp7Symfony
it's a tool to install a symfony (or other php7 friendly) application with docker very quickly on your server.

## Step 1
Change `ServerName` and `Hostname` in `./Dockerfile`.

## Step 2
Change Shell variable at your convenience into `./launch_server`. 
```
CONTAINERNAME="myContainerName"
REVERSEURL="myreverseUrl.com" // If you're using jwilder/nginx-proxy (or install and run it before this how to)
HOSTPORT="8080" // For testing at <myIpAddress>:8080
```

## Step 3
use `./launch_server` to start running your apache in php 7.0 !

## Step 4
Go to `<myIpAddress>:8080`

### If you see "It's work" and your php infos do this next steps:

## Step 5
Put your website code into www or web if it's not for symfony.

## Step 6
Use `Compose install` to install your symfony configuration into `www`.

# DONE !
