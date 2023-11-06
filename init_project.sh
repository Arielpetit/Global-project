#!/bin/bash

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
    echo "Generating a README file..."
    touch README.md
    echo "This is a Bash project." >> README.md
    echo "" >> README.md
    echo "To run the starter script, execute the following command on your terminal:" >> README.md
    echo "./starter.sh" >> README.md
    echo "If an error message pops up saying permission denied, then meaning you don't have the xecution permission">> README.md
    echo "./So inorder to solve this issue you will run this command 'chmod 777 starter.sh' then './starter.sh' to execute" >> README.md
    echo "If you renamed your script, replace 'starter.sh' with the actual name of your script." >> README.md
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

# Call the project_type function to start the project initialization
project_type
