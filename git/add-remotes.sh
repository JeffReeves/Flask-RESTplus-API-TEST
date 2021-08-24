#!/bin/bash
# purpose: add all remotes for repo
# author: Jeff Reeves

# define repository's stub for the URL
REPO_STUB='Flask-RESTplus-API-TEST'

# create the repo directory on bridges
ssh git@bridges "mkdir /git/Flask-RESTplus-API-TEST.git && cd /git/Flask-RESTplus-API-TEST.git && git config --global init.defaultBranch main && git init --bare && sed -i 's/master/main/' /git/rpi4-custom-os.git/HEAD"

# add bridges to git remote list
git remote add bridges git@bridges:/git/Flask-RESTplus-API-TEST.git

# add gitlab to git remote list
git remote add gitlab git@gitlab.com:JeffReeves/Flask-RESTplus-API-TEST.git

# add github to git remote list
git remote add github git@github.com:JeffReeves/Flask-RESTplus-API-TEST.git

# update origin to bridges
git remote set-url origin git@bridges:/git/Flask-RESTplus-API-TEST.git

# view all remotes
git remote -v

# open settings for gitlab and github in browser
#explorer.exe "https://gitlab.com/JeffReeves/Flask-RESTplus-API-TEST/-/settings/repository"
#explorer.exe "https://gitlab.com/JeffReeves/Flask-RESTplus-API-TEST/-/branches"
#explorer.exe "https://github.com/JeffReeves/Flask-RESTplus-API-TEST/settings/branches"
#explorer.exe "https://github.com/JeffReeves/Flask-RESTplus-API-TEST/branches"

