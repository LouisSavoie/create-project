# Create Project

A Ruby / Shell script for automation of creating new projects.

**What it does**
- Create new GitHub repository
- Navigate up one folder (into projects directory)
- Create new folder with project name
- Navigate into new project folder
- Initiate local git repository
- Add remote to local repository
- Create readme
- Add files to commit
- Commit 'initial commit'
- Push to remote repository
- Open project in VSCode

## How to use

1. clone the repo to your $PATH and navigate into it
2. Install dotenv `gem install dotenv`
3. Install Octokit `gem install octokit`
4. Create a dotenv file `touch .env`
5. [Generate a GitHub Personal Access Token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token) and add it to the .env file like this: GITHUB_TOKEN=tokenhere
6. Add your GitHub username to the .env file like this: GITHUB_NAME=usernamehere
7. Run the script with `bash create-project.sh`, enter the name of your new project and away you go!