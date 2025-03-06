#!/usr/bin/env python3

##
## ## Link
##
## * https://pygithub.readthedocs.io/en/latest/introduction.html
## * https://pygithub.readthedocs.io/en/latest/introduction.html#very-short-tutorial
## * https://github.com/PyGithub/PyGithub
## * https://pypi.org/project/PyGithub/
##
## ## install python-pygithub
##
## > for archlinux or manjaro
##
## ``` sh
## sudo pacman -S --needed python-pygithub
## ```
##
## > for fedora
##
## ``` sh
## sudo dnf install python3-github
## ```
##
## > for debian or ubuntu
##
## ``` sh
## sudo apt-get install python3-github
## ```
##
## ## Usage
##
## ``` sh
## ./pygithub.py > clone.sh
## sh clone.sh
## ```
##

from github import Github

#gh = Github("user", "password")
gh = Github()

##
## ## Target
## https://github.com/PyGithub
##


for repo in gh.get_user('PyGithub').get_repos():
	#print(repo.name)
	#print(repo.clone_url)
	print("git clone {url}".format(url=repo.clone_url))
