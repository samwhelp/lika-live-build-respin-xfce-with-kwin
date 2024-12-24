



################################################################################
### Head: Model / mod_help
##

mod_help () {

	#util_error_echo "mod_help"


cat << EOF

Usage:

	$ make [action]

Example:

	$ make
	$ make help

	$ make apply

Debug:
	$ export DEBUG_HELPER=true

EOF



	return 0

}

##
### Tail: Model / mod_help
################################################################################




################################################################################
### Head: Model / mod_apply
##

mod_apply () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mod_apply"
	util_error_echo "##"
	util_error_echo

	#sys_apply_theme_txt

	sys_apply_theme_asset


	util_error_echo

	return 0

}

sys_apply_theme_txt () {

	local source_file_path="${THE_MAIN_OVERLAY_DIR_PATH}/${THE_GRUB_THEME_TXT_FILE_NAME}"
	local target_file_path="${THE_GRUB_THEME_PACKAGE_DIR_PATH}/${THE_GRUB_THEME_TXT_FILE_NAME}"

	#util_error_echo "source_file_path=${source_file_path}"
	#util_error_echo "target_file_path=${target_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_file_path}" "${target_file_path}"
	sudo install -Dm644 "${source_file_path}" "${target_file_path}"


	return 0

}


sys_apply_theme_asset () {

	local source_dir_path="${THE_MAIN_OVERLAY_DIR_PATH}/${THE_GRUB_THEME_ASSET_DIR_NAME}"
	local target_dir_path="${THE_GRUB_THEME_PACKAGE_DIR_PATH}/${THE_GRUB_THEME_ASSET_DIR_NAME}"

	#util_error_echo "source_dir_path=${source_dir_path}"
	#util_error_echo "target_dir_path=${target_dir_path}"


	util_error_echo
	util_error_echo sudo cp -rf "${source_dir_path}/." "${target_dir_path}"
	sudo cp -rf "${source_dir_path}/." "${target_dir_path}"


	return 0

}


##
### Tail: Model / mod_apply
################################################################################
