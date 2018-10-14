#!/bin/bash
if [ "$EULA" == "accept" ]
  then
	echo "EULA accepted."
  else
  	echo "EULA not accepted. Please set the environment variable EULA to 'accept' to accept the Minecraft EULA (https://minecraft.net/terms) and privacy policy (https://go.microsoft.com/fwlink/?LinkId=521839)"
  	exit 1
fi

echo "Starting Minecraft Bedrock Edition Server..."
cd /opt/mcbedrock
LD_LIBRARY_PATH=. ./bedrock_server