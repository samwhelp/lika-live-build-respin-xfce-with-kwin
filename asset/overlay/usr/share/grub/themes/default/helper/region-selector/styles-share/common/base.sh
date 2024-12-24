

################################################################################
### Head: Util / Debug
##

util_debug_echo () {

	if is_debug; then
		echo "${@}" 1>&2
	fi

}

util_error_echo () {

	echo "${@}" 1>&2

}

##
### Head: Util / Debug
################################################################################




################################################################################
### Head: Base / Util
##

##
## THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
##

find_dir_path () {

	if ! [ -d "$(dirname -- "${1}")" ]; then
		dirname -- "${1}"
		return 1
	fi
	echo "$(cd -- "$(dirname -- "${1}")" ; pwd)"

}

##
## THIS_BASE_DIR_PATH="$(find_dir_path "${0}")"
##


##
## $ export DEBUG_HELPER=true
##

is_debug () {

	if [ "${DEBUG_HELPER}" = "true" ]; then
		return 0
	fi

	return 1

}

is_not_debug () {

	! is_debug

}

##
### Tail: Base / Util
################################################################################


################################################################################
### Head: Base / Init
##

base_var_init () {

	##
	## ## Base Path
	##

	THE_INIT_DIR_PATH="$(find_dir_path "${THE_INIT_DIR_PATH}/.")"
	THE_PLAN_DIR_PATH="$(find_dir_path "${THE_INIT_DIR_PATH}/../../.")"




	##
	## ## Main Path
	##

	THE_MAIN_DIR_PATH="${THE_BASE_DIR_PATH}"


	##
	## ## Main Path / Sub
	##

	THE_MAIN_BIN_DIR_NAME="bin"
	THE_MAIN_BIN_DIR_PATH="${THE_MAIN_DIR_PATH}/${THE_MAIN_BIN_DIR_NAME}"

	THE_MAIN_EXT_DIR_NAME="ext"
	THE_MAIN_EXT_DIR_PATH="${THE_MAIN_DIR_PATH}/${THE_MAIN_EXT_DIR_NAME}"

	THE_MAIN_MAK_DIR_NAME="mak"
	THE_MAIN_MAK_DIR_PATH="${THE_MAIN_DIR_PATH}/${THE_MAIN_MAK_DIR_NAME}"

	THE_MAIN_SYS_DIR_NAME="sys"
	THE_MAIN_SYS_DIR_PATH="${THE_MAIN_DIR_PATH}/${THE_MAIN_SYS_DIR_NAME}"

	THE_MAIN_SHARE_DIR_NAME="share"
	THE_MAIN_SHARE_DIR_PATH="${THE_MAIN_DIR_PATH}/${THE_MAIN_SHARE_DIR_NAME}"

	THE_MAIN_TMP_DIR_NAME="tmp"
	THE_MAIN_TMP_DIR_PATH="${THE_MAIN_DIR_PATH}/${THE_MAIN_TMP_DIR_NAME}"

	THE_MAIN_ASSET_DIR_NAME="asset"
	THE_MAIN_ASSET_DIR_PATH="${THE_MAIN_DIR_PATH}/${THE_MAIN_ASSET_DIR_NAME}"

	THE_MAIN_OVERLAY_DIR_NAME="overlay"
	THE_MAIN_OVERLAY_DIR_PATH="${THE_MAIN_DIR_PATH}/${THE_MAIN_OVERLAY_DIR_NAME}"


	##
	############################################################################
	##


	##
	## ## Master Path
	##

	THE_MASTER_DIR_PATH="$(find_dir_path "${THE_INIT_DIR_PATH}/../../../../.")"


	##
	############################################################################
	##


	##
	## ## Grub Theme Package Path
	##


	THE_GRUB_THEME_PACKAGE_DIR_PATH="${THE_MASTER_DIR_PATH}"

	##
	## ## Grub Theme Package / Sub
	##

	THE_GRUB_THEME_PACKAGE_ICONS_DIR_NAME="icons"
	THE_GRUB_THEME_PACKAGE_ICONS_DIR_PATH="${THE_GRUB_THEME_PACKAGE_DIR_PATH}/${THE_GRUB_THEME_PACKAGE_ICONS_DIR_NAME}"

	##
	## ## Grub Theme Package / Sub / File
	##

	THE_GRUB_THEME_TXT_FILE_NAME="theme.txt"
	THE_GRUB_THEME_TXT_FILE_PATH="${THE_GRUB_THEME_PACKAGE_DIR_PATH}/${THE_GRUB_THEME_TXT_FILE_NAME}"

	THE_GRUB_THEME_BACKGROUND_FILE_NAME="background.jpg"
	THE_GRUB_THEME_BACKGROUND_FILE_PATH="${THE_GRUB_THEME_PACKAGE_DIR_PATH}/${THE_GRUB_THEME_BACKGROUND_FILE_NAME}"

	THE_GRUB_THEME_ASSET_DIR_NAME="asset"
	THE_GRUB_THEME_ASSET_DIR_PATH="${THE_GRUB_THEME_PACKAGE_DIR_PATH}/${THE_GRUB_THEME_ASSET_DIR_NAME}"


	##
	############################################################################
	##


	##
	## ## Download / Temp
	##

	THE_DOWNLOD_TEMP_DIR_NAME="grub-theme-background-download"
	THE_DOWNLOD_TEMP_DIR_PATH="${HOME}/.cache/${THE_DOWNLOD_TEMP_DIR_NAME}"


	##
	############################################################################
	##


	##
	## ## Config / Each
	##

	THE_SOURCE_DOWNLOAD_BACKGROUND_URL=""
	THE_TARGET_DOWNLOAD_BACKGROUND_NAME="${THE_GRUB_THEME_BACKGROUND_FILE_NAME}"
	THE_TEMP_DOWNLOAD_BACKGROUND_NAME="${THE_TARGET_DOWNLOAD_BACKGROUND_NAME}"

	##
	############################################################################
	##


	return 0

}

base_var_dump () {

	is_not_debug && return 0

	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: var_dump"
	util_debug_echo "##"
	util_debug_echo




	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Note"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "##"
	util_debug_echo "## **Hide This Info**"
	util_debug_echo "##"
	util_debug_echo "## \$ export DEBUG_HELPER=false"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "##"
	util_debug_echo "## **Show This Info**"
	util_debug_echo "##"
	util_debug_echo "## \$ export DEBUG_HELPER=true"
	util_debug_echo "##"
	util_debug_echo




	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Base Path"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_BASE_DIR_PATH=${THE_BASE_DIR_PATH}"
	util_debug_echo "THE_INIT_DIR_PATH=${THE_INIT_DIR_PATH}"
	util_debug_echo "THE_PLAN_DIR_PATH=${THE_PLAN_DIR_PATH}"
	util_debug_echo




	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Main Path"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_MAIN_DIR_PATH=${THE_MAIN_DIR_PATH}"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Main Path / Sub"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_MAIN_BIN_DIR_NAME=${THE_MAIN_BIN_DIR_NAME}"
	util_debug_echo "THE_MAIN_BIN_DIR_PATH=${THE_MAIN_BIN_DIR_PATH}"
	util_debug_echo

	util_debug_echo "THE_MAIN_EXT_DIR_NAME=${THE_MAIN_EXT_DIR_NAME}"
	util_debug_echo "THE_MAIN_EXT_DIR_PATH=${THE_MAIN_EXT_DIR_PATH}"
	util_debug_echo

	util_debug_echo "THE_MAIN_MAK_DIR_NAME=${THE_MAIN_MAK_DIR_NAME}"
	util_debug_echo "THE_MAIN_MAK_DIR_PATH=${THE_MAIN_MAK_DIR_PATH}"
	util_debug_echo

	util_debug_echo "THE_MAIN_SYS_DIR_NAME=${THE_MAIN_SYS_DIR_NAME}"
	util_debug_echo "THE_MAIN_SYS_DIR_PATH=${THE_MAIN_SYS_DIR_PATH}"
	util_debug_echo

	util_debug_echo "THE_MAIN_SHARE_DIR_NAME=${THE_MAIN_SHARE_DIR_NAME}"
	util_debug_echo "THE_MAIN_SHARE_DIR_PATH=${THE_MAIN_SHARE_DIR_PATH}"
	util_debug_echo

	util_debug_echo "THE_MAIN_TMP_DIR_NAME=${THE_MAIN_TMP_DIR_NAME}"
	util_debug_echo "THE_MAIN_TMP_DIR_PATH=${THE_MAIN_TMP_DIR_PATH}"
	util_debug_echo

	util_debug_echo "THE_MAIN_ASSET_DIR_NAME=${THE_MAIN_ASSET_DIR_NAME}"
	util_debug_echo "THE_MAIN_ASSET_DIR_PATH=${THE_MAIN_ASSET_DIR_PATH}"
	util_debug_echo


	util_debug_echo "THE_MAIN_OVERLAY_DIR_NAME=${THE_MAIN_OVERLAY_DIR_NAME}"
	util_debug_echo "THE_MAIN_OVERLAY_DIR_PATH=${THE_MAIN_OVERLAY_DIR_PATH}"
	util_debug_echo




	##
	############################################################################
	##




	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Master Path"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_MASTER_DIR_PATH=${THE_MASTER_DIR_PATH}"
	util_debug_echo


	##
	############################################################################
	##




	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Grub Theme Package Path"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GRUB_THEME_PACKAGE_DIR_PATH=${THE_GRUB_THEME_PACKAGE_DIR_PATH}"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Grub Theme Package Path / Sub"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GRUB_THEME_PACKAGE_ICONS_DIR_NAME=${THE_GRUB_THEME_PACKAGE_ICONS_DIR_NAME}"
	util_debug_echo "THE_GRUB_THEME_PACKAGE_ICONS_DIR_PATH=${THE_GRUB_THEME_PACKAGE_ICONS_DIR_PATH}"
	util_debug_echo



	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Grub Theme Package / Sub / File"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GRUB_THEME_TXT_FILE_NAME=${THE_GRUB_THEME_TXT_FILE_NAME}"
	util_debug_echo "THE_GRUB_THEME_TXT_FILE_PATH=${THE_GRUB_THEME_TXT_FILE_PATH}"
	util_debug_echo

	util_debug_echo "THE_GRUB_THEME_BACKGROUND_FILE_NAME=${THE_GRUB_THEME_BACKGROUND_FILE_NAME}"
	util_debug_echo "THE_GRUB_THEME_BACKGROUND_FILE_PATH=${THE_GRUB_THEME_BACKGROUND_FILE_PATH}"
	util_debug_echo

	util_debug_echo "THE_GRUB_THEME_ASSET_DIR_NAME=${THE_GRUB_THEME_ASSET_DIR_NAME}"
	util_debug_echo "THE_GRUB_THEME_ASSET_DIR_PATH=${THE_GRUB_THEME_ASSET_DIR_PATH}"
	util_debug_echo




	##
	############################################################################
	##


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Download / Temp"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_DOWNLOD_TEMP_DIR_NAME=${THE_DOWNLOD_TEMP_DIR_NAME}"
	util_debug_echo "THE_DOWNLOD_TEMP_DIR_PATH=${THE_DOWNLOD_TEMP_DIR_PATH}"
	util_debug_echo


	##
	############################################################################
	##


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Config / Each"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_SOURCE_DOWNLOAD_BACKGROUND_URL=${THE_SOURCE_DOWNLOAD_BACKGROUND_URL}"
	util_debug_echo "THE_TARGET_DOWNLOAD_BACKGROUND_NAME=${THE_TARGET_DOWNLOAD_BACKGROUND_NAME}"
	util_debug_echo "THE_TEMP_DOWNLOAD_BACKGROUND_NAME=${THE_TEMP_DOWNLOAD_BACKGROUND_NAME}"
	util_debug_echo


	##
	############################################################################
	##




	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

##
### Tail: Base / Init
################################################################################
