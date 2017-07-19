#!/bin/bash

### Simple script to spin up a django project quickly

PROJ_NAME=$1
APP_NAME=$2

if [[ $PROJ_NAME == "-h" || $PROJ_NAME == "--help" ]]; then
	echo -n "This script is to quickly spin up a new django project"
	echo ""
	echo -n "It takes two arguments, first the project name, and second the app name"
	echo ""
	echo -n "Example ./django_project_creator yerma rekt"
	echo ""
	exit
fi
# Cd into the directory you want, spin up the project
(cd /Users/hack/Development/Python/Django ; \
	/Library/Frameworks/Python.framework/Versions/3.5/bin/django-admin startproject $PROJ_NAME)
# Cd into the project directory and spin up the app 
(cd /Users/hack/Development/Python/Django/$PROJ_NAME ; \
	/Library/Frameworks/Python.framework/Versions/3.5/bin/python3 manage.py startapp $APP_NAME)
