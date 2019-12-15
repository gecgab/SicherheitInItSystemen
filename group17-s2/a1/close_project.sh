#! /bin/bash
if [ -n "$1" ]
then
    chmod 0740 projects/$1 # Only read access for the project group, the owner can still do everything
else
    echo "Please specify a project name"
fi
