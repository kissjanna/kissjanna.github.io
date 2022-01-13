#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd docs/.vitepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://kissjanna.github.io
git push -f git@github.com:kissjanna/kissjanna.github.io.git main

# if you are deploying to https://kissjanna.github.io/<REPO>
# git push -f git@github.com:kissjanna/<REPO>.git master:gh-pages

cd -