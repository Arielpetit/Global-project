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
# Project type
project_type() {
  echo "Please select which project you would like to work on:"
  echo "1. Python"
  echo "2. Bash"
  echo "Enter the number corresponding to your choice: "
  read -r choice

  if [[ $choice -eq 1 ]]; then
    # Create a Python starter file
    echo "Creating a Python starter file..."
    touch starter.py
    echo "print('Hello user, this file was created for your Python project')" >> starter.py
	# Generate a README file with run instructions
    echo "Generating a README file for the bash project..."
    touch README.md
    echo "Dear user thankyou for using our GLBAL PROJECT INITIALIZATION" >> README.md
    echo "Here are some guidelines on how you are going to start working with the project" >> README.md
    echo "for the python project, a directory and virtual environment was created and activated for your project to be in a more adequate space of work" >>README.md
    echo "It might require you to install some libaries to carry out your project efficientely" >> README
    echo "We eventually created a python file for you to type your codes in a good environment" >> README
    echo "To run your code in the terminal when finished saving it you can use the command 'python <name of file>' or python3 <name of file>" >> README
    echo "We hope this few guide lines help you to achieve a better understanding on how to work with your project and achieve the best, GOOD LUCK!!!"

    # Set up a virtual environment
    echo "Setting up a virtual environment..."
    python3 -m venv venv
    source venv/bin/activate
    echo "Virtual environment created and activated."

  elif [[ $choice -eq 2 ]]; then
    # Create a Bash starter file
    echo "Creating a Bash starter file..."
    touch starter.sh
    echo "#!/bin/bash" >> starter.sh
    echo "echo 'Hello user, this file was created for your Bash script project'" >> starter.sh

    # Generate a README file with run instructions
    echo "Generating a README file for the bash project..."
    touch README.md
    echo "This is a Bash project." >> README.md
    echo "" >> README.md
    echo "To run the starter script, execute the following command on your terminal:" >> README.md
    echo "./starter.sh" >> README.md
    echo "If an error message pops up saying permission denied, then meaning you don't have the xecution permission">> README.md
    echo "./So inorder to solve this issue you will run this command 'chmod 777 starter.sh' then './starter.sh' to execute" >> README.md
    echo "If you renamed your script, replace 'starter.sh' with the actual name of your script." >> README.md
    echo "Dear user thankyou for using our GLBAL PROJECT INITIALIZATION" >> README>
    echo "Here are some guidelines on how you are going to start working with the "
    echo "for the bash project, a directory was actually  created for the project to be carried out in it "
    echo " "
    echo "We eventually created a bash  file for you to type your codes in a good and adequate environment"
    echo "To run your code in the terminal when finished saving it you can use the the following command './<name of file>'"
    echo "Hope this guide line give you a brief and clear understanding  on how to work with your project and achieve the best, GOOD LUCK!!!"

  else
    echo "Invalid choice. please enter a valid choice..."
    echo "Will you like to quit?"
    echo "1. YES"
    echo "2. NO"
    echo "please enter a number which corresponds to your choice"
    read -r choice2
   if [[ $choice2 -eq 1 ]]; then
    exit 1
   elif [[ $choice2 -eq 2 ]]; then
    project_type
    return
	else
	echo "Invalid number, exiting..."
	exit 1
	fi
  fi

  echo "Project initialization completed successfully."
}

# Call the project_type function to s
