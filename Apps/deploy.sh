#!/bin/bash
#
#
#
echo "Deploying to Application into Server"

if [ $# -lt 1 ]
then
	echo "Enter the Environment to deploy the War file"
	echo " Usage : $0/(QA | PROD)"
	exit 1;
fi

if [ "$1" == "QA" ]
then
	echo "Deploying the War file to $1 Environment"
	echo "Deploying in Progress..... "
	cp war/myapp.war ../../servers/QA_server/
	sleep 2
	echo "Deployment done"
elif [ "$1" == "PROD" ]
then
	echo "Deploying the War file to $1 Environment"
	echo "Deploying in Progress..... "
	cp war/myapp.war ../../servers/PROD/
	sleep 2
	echo "Deployment done"
else
	echo "There is no $1 environment present"
fi

