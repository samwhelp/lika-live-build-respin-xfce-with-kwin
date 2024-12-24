#!/usr/bin/env bash


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "${0}")" ; pwd)"
#THE_INIT_DIR_PATH="${THE_BASE_DIR_PATH}/../ext"
#. "${THE_INIT_DIR_PATH}/init.sh"

##
### Tail: Init
################################################################################




################################################################################
### Head: Util / Debug
##

util_error_echo () {

	echo "${@}" 1>&2

}

##
### Head: Util / Debug
################################################################################




################################################################################
### Head: Model / mod_fetch
##

mod_fetch () {


	local tmp_download_dir_path="${HOME}/.cache/grub-theme-download"


	util_error_echo
	util_error_echo sudo mkdir -p "/boot/grub/themes"
	sudo mkdir -p "/boot/grub/themes"


	util_error_echo
	util_error_echo mkdir -p "${tmp_download_dir_path}"
	mkdir -p "${tmp_download_dir_path}"


	util_error_echo
	util_error_echo wget -c "https://github.com/samwhelp/grub-theme-glass-remix/archive/refs/heads/main.tar.gz" -O "${tmp_download_dir_path}/grub-theme-glass-remix-main.tar.gz"
	wget -c "https://github.com/samwhelp/grub-theme-glass-remix/archive/refs/heads/main.tar.gz" -O "${tmp_download_dir_path}/grub-theme-glass-remix-main.tar.gz"


	util_error_echo
	util_error_echo tar xf "${tmp_download_dir_path}/grub-theme-glass-remix-main.tar.gz" -C "${tmp_download_dir_path}"
	tar xf "${tmp_download_dir_path}/grub-theme-glass-remix-main.tar.gz" -C "${tmp_download_dir_path}"


	util_error_echo
	util_error_echo sudo mkdir -p "/boot/grub/themes"
	sudo mkdir -p "/boot/grub/themes"


	util_error_echo
	util_error_echo sudo cp -rf "${tmp_download_dir_path}/grub-theme-glass-remix-main/." "/boot/grub/themes/grub-theme-glass-remix"
	sudo cp -rf "${tmp_download_dir_path}/grub-theme-glass-remix-main/." "/boot/grub/themes/grub-theme-glass-remix"




	util_error_echo

	return 0

}

##
### Tail: Model / mod_fetch
################################################################################




################################################################################
### Head: Model / main_fetch
##

main_fetch () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## main_fetch"
	util_error_echo "##"


	mod_fetch

	return 0

}

##
### Tail: Model / main_fetch
################################################################################




################################################################################
### Head: Main
##

__main__ () {

	main_fetch "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
