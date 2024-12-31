#!/usr/bin/env bash




mod_sublime_text_install () {

	local deb_version="4189"
	local deb_name="sublime-text_build-${deb_version}_amd64.deb"
	local deb_url="https://download.sublimetext.com/${deb_name}"

	wget -c "${deb_url}"

	echo sudo dpkg -i "${deb_name}"
	sudo dpkg -i "${deb_name}"

}


mod_sublime_text_install
