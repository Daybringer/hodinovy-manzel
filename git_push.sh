#!/usr/bin/env sh

# abort on errors
set -e

cd ../hodinovy-manzel

echo "Building..."

npm run generate

mv dist/* ../hodinovy-manzel-compiled/

cd ../hodinovy-manzel-compiled

git add .
read -p "Commit message:" commitMessage
git commit -m "$commitMessage"
git push origin master
