autoUpdateUbuntu Project

This project helps to automatically update and maintain Ubuntu systems. In this repository, you'll find a script that performs automatic updates on your system every time you log in. This guide will walk you through the steps to create your own Git repository and push your code to GitHub.
How to Set Up the Repository

Follow these steps to set up a Git repository locally and push it to GitHub.
1. Create a Local Git Repository

    Navigate to your project folder where your code is located:

    Open the terminal and use the cd command to go to the directory where your project files are:

cd /path/to/your/project

Initialize a Git repository:

Run the following command to initialize the repository:

    git init

    This command creates a .git folder in your directory, making it a Git repository.

2. Add Your Files to the Repository

    Add your files to the staging area:

    After initializing the repository, add your project files to Git's staging area:

    git add .

    This command adds all files in the directory to Git. You can also add specific files by replacing the . with the filename, like git add file1.py.

3. Commit Your Changes

    Commit the changes to your local repository:

    After adding files, commit them to your repository with a message:

    git commit -m "Initial commit"

    This will save the snapshot of your project in Git.

4. Create a Remote GitHub Repository

    Create a new repository on GitHub:

    Go to GitHub, log in, and create a new repository. For this project, you could name it autoUpdateUbuntu (or anything relevant to your project).
        Click on the + icon in the top-right corner of GitHub and select New repository.
        Provide a repository name.
        Choose whether the repository will be public or private.
        Do not initialize with a README or a license (you already have those locally).
        Click Create repository.

5. Link Your Local Repository to GitHub

    Add the remote repository URL:

    Copy the SSH URL (e.g., git@github.com:yourusername/autoUpdateUbuntu.git) from the newly created GitHub repository page.

    In the terminal, link your local repository to GitHub by running:

    git remote add origin git@github.com:yourusername/autoUpdateUbuntu.git

    Replace yourusername with your GitHub username and autoUpdateUbuntu with the repository name you created.

6. Push Your Local Repository to GitHub

    Push the local repository to GitHub:

    Run the following command to push your files to GitHub:

git push -u origin main

If your default branch is master (old GitHub repositories), use:

    git push -u origin master

7. Verify the Repository

    Check the repository on GitHub:

    Go to your GitHub repository page, and you should see your files pushed there.

   The Script: autoUpdateUbuntu.sh

This script ensures that your Ubuntu system is automatically updated each time you log in.
Script Content:

#!/bin/bash

# autoUpdateUbuntu.sh - Automatically updates Ubuntu system on login

# Run system update
echo "Starting system update..."
sudo apt update && sudo apt upgrade -y

# Optionally, you can add additional commands here for cleaning up old packages or upgrading specific packages.
# For example:
# sudo apt autoremove -y
# sudo apt autoclean

echo "System update complete."

Explanation:

    sudo apt update: Fetches the list of available updates.
    sudo apt upgrade -y: Upgrades all packages that have available updates.
    Optional commands: You can uncomment and add more commands like sudo apt autoremove to remove unnecessary packages or sudo apt autoclean to clean the package cache.

How to Use the Script:

    Save the script to a file called autoUpdateUbuntu.sh in your project directory.

    Make the script executable:

    Run the following command to make the script executable:

chmod +x autoUpdateUbuntu.sh

Set the script to run at login:

To ensure the script runs each time you log in, you can add it to your shell's startup script (e.g., .bashrc or .zshrc depending on your shell).

    Open your shell’s configuration file:

nano ~/.bashrc  # For Bash users

Add the following line at the end of the file:

    ~/path/to/autoUpdateUbuntu.sh

    Save and exit the editor (CTRL+O to save, then CTRL+X to exit).

Now, each time you open a new terminal session or log in, your system will automatically update.
