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

# Create project dir, git init, add remote, create readme, git add all, initial commit, push to GitHub
system( "cd .. && mkdir #{project_name} && cd #{project_name} && git init && git remote add origin https://github.com/#{github_name}/#{project_name}.git && touch README.md && git add . && git commit -m \"initial commit\" && git push -u origin master && code README.md" )
