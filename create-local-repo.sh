PROJECT_NAME=$1
GITHUB_NAME=$2

cd ~/repos/
mkdir $PROJECT_NAME
cd $PROJECT_NAME
git init
git remote add origin https://github.com/$GITHUB_NAME/$PROJECT_NAME.git
touch README.md
git add .
git commit -m "initial commit"
git push -u origin master
code .