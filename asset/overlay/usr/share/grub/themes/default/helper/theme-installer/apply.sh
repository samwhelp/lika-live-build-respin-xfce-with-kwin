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
### Head: System / sys_grub_config_recreate
##


sys_grub_config_recreate () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## sys_grub_config_recreate"
	util_error_echo "##"

	util_error_echo
	util_error_echo sudo grub-mkconfig -o /boot/grub/grub.cfg
	util_error_echo
	sudo grub-mkconfig -o /boot/grub/grub.cfg

	return 0

}

##
### Tail: System / sys_grub_config_recreate
################################################################################



################################################################################
### Head: Model / mod_apply
##

mod_apply () {

	util_error_echo
	util_error_echo sudo install -dm755 "/etc/default/grub.d"
	sudo install -dm755 "/etc/default/grub.d"

	util_error_echo
	util_error_echo sudo touch "/etc/default/grub.d/theme.cfg"
	sudo touch "/etc/default/grub.d/theme.cfg"


	util_error_echo

cat << EOF | sudo tee /etc/default/grub.d/theme.cfg
GRUB_BACKGROUND='/boot/grub/themes/grub-theme-glass-remix/background.jpg'
GRUB_THEME="/boot/grub/themes/grub-theme-glass-remix/theme.txt"

EOF




	return 0

}

##
### Tail: Model / mod_apply
################################################################################




################################################################################
### Head: Model / main_apply
##

main_apply () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## main_apply"
	util_error_echo "##"

	mod_apply

	sys_grub_config_recreate

	util_error_echo

	return 0

}

##
### Tail: Model / main_apply
################################################################################




################################################################################
### Head: Main
##

__main__ () {

	main_apply "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
