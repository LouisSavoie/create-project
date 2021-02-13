require 'octokit'
require 'dotenv'

# Set up env vars
Dotenv.load
github_name = ENV['GITHUB_NAME']
github_token = ENV['GITHUB_TOKEN']

# Get project name from the user
print "Project Name: "
project_name = gets.chomp

# Setup Octokit and create GitHub Repo
client = Octokit::Client.new(:access_token => "#{github_token}")
client.create_repository("#{project_name}")

# Run shell script to: Create project dir, git init, add remote, create readme, git add all, initial commit, push to GitHub
system( "chmod +x local_commands.sh && bash -i ./local_commands.sh #{project_name} #{github_name}" )