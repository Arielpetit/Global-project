#!/bin/bash

echo "Hello user, welcome to our global project initialization script !!!"
echo "Hope you will like it"
echo "*******************************************************************"
echo ""

echo "Please enter your project name you would like to create:"
echo "*******************************************************************"
read -r name
echo ""
echo "Ohhh pretty cool name! So you want to create a project named $name..."
echo "***************************************************************************"
echo "Well, let's proceed."

mkdir "$name"
echo "**************************************************************************"
echo "A directory named $name was created for this project."
cd "$name" || exit
