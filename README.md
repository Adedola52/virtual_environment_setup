# virtual_environment_setup

## Project Statement

A junior data engineer has just joined the organization and was given a first hands-on task to hit the ground running. The task required him to create a script that would activate a virtual environment. This would help the team by enabling them to activate virtual environments without writing commands from scratch every time.

## Project requirement

- Check for an existing Python 3.10 venv module package and Python virtual environment
    - If python 3.10 venv module package does not exists, install one
    - If it exists, skip the proccess 
    - If a virtual environment exists, activate it
    - If not, create and activate a new one
- Upgrades pip
    - Ensure the latest version of pip is installed in the environment
- Generates a .gitignore file
    - The file should include standard ignore rules for a Python project (e.g .venv )
    - Skip creation if it already exists, but display a warning message
- Provides colorful, user-friendly feedback
    - Use color codes to display INFO, SUCCESS, WARNING, and ERROR messages
- Includes structured functions
    - Organize each task (virtual environment, pip upgrade, gitignore, etc.) into its own function
    - Include a **main function** that calls these functions in sequence
- Handles errors gracefully
    - The script should stop immediately if any command fails
- Automatically install a few Python packages (like pandas or requests etc)
- Write a comprehensive log of all setup actions to a file called setup.log

## Important Considerations When Writing the Script

- Think about reusability: if someone runs your script twice, it should not break or duplicate files.
- Use functions to organize your code logically.
- Use conditional checks to decide whether to create or skip actions.
- Include clear messages to help the user understand what is happening.
- Handle errors properly.
- Test with different scenario (No .venv directory exists, .venv already exists, .gitignore already exists etc.)

This project could also be hosted on github for a public use. That means, anyone even those outside the organization can easily work with this by following these simple steps:
- Clone this repository:

```
git clone https://github.com/Adedola52/virtual_environment_setup
```

- CD into the directory:

```
cd virtual_environment_setup
```
- Before activating the virtual environment, review the dependencies in requirements.txt. If the listed packages meet your needs, proceed to activate the environment. If not, update requirements.txt first, then activate the environment. Activate the environment using:

```
source set_up.sh
```

You have not only just successfully activated a virtual environment but also satifistied the important criterias and considerations outlined above.
