



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

	$ make fetch
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
### Head: Model / mod_fetch
##

mod_fetch () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mod_fetch"
	util_error_echo "##"
	util_error_echo


	local source_url="${THE_SOURCE_DOWNLOAD_BACKGROUND_URL}"


	local tmp_dir_path="${THE_DOWNLOD_TEMP_DIR_PATH}"
	local tmp_file_path="${tmp_dir_path}/${THE_TEMP_DOWNLOAD_BACKGROUND_NAME}"


	local target_dir_path="${THE_MAIN_OVERLAY_DIR_PATH}"
	local target_file_path="${target_dir_path}/${THE_TARGET_DOWNLOAD_BACKGROUND_NAME}"


	##
	## Download to tmp dir
	##

	util_error_echo
	util_error_echo mkdir -p "${tmp_dir_path}"
	mkdir -p "${tmp_dir_path}"


	util_error_echo
	util_error_echo wget -c "${source_url}" -O "${tmp_file_path}"
	wget -c "${source_url}" -O "${tmp_file_path}"


	##
	## Copy from tmp dir
	##

	util_error_echo
	util_error_echo sudo mkdir -p "${target_dir_path}"
	sudo mkdir -p "${target_dir_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${tmp_file_path}" "${target_file_path}"
	sudo install -Dm644 "${tmp_file_path}" "${target_file_path}"



	return 0

}

##
### Tail: Model / mod_fetch
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


	local source_file_path="${THE_MAIN_OVERLAY_DIR_PATH}/${THE_TARGET_DOWNLOAD_BACKGROUND_NAME}"
	local target_file_path="${THE_GRUB_THEME_PACKAGE_DIR_PATH}/${THE_TARGET_DOWNLOAD_BACKGROUND_NAME}"

	#util_error_echo "source_file_path=${source_file_path}"
	#util_error_echo "target_file_path=${target_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_file_path}" "${target_file_path}"
	sudo install -Dm644 "${source_file_path}" "${target_file_path}"



	util_error_echo

	return 0

}

##
### Tail: Model / mod_apply
################################################################################
