# Quick Server Commands

## Connect to the Server

Through Google Cloud SSH.

## Access the Server Directory

  cd/home/Minecraft

## Manage the Server Console

Server runs inside a GNU Screen session (named mcs).
Attach to the session:
  screen -r mcs

Detach from the session without stopping the server:
  Ctrl + A + D

## Start the Server

From the server directory, run:
  screen -S mcs java -Xmx3G -jar fabric-server-mc.26.3-loader.0.20.1-launcher.1.1.2.jar nogui

## Stop the Server

  stop

## View Server Files

List files in directory:
  ls -lah /home/Minecraft

Edit:
  nano filename
