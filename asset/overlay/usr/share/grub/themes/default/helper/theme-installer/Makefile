

THE_MAKEFILE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
THE_BASE_DIR_PATH := $(abspath $(dir $(THE_MAKEFILE_FILE_PATH)))
THE_PLAN_DIR_PATH := $(THE_BASE_DIR_PATH)
THE_MAIN_DIR_PATH := $(THE_PLAN_DIR_PATH)
#THE_MAIN_BIN_DIR_PATH := $(THE_MAIN_DIR_PATH)/bin
THE_MAIN_BIN_DIR_PATH := $(THE_MAIN_DIR_PATH)
THE_MAIN_MAK_DIR_PATH := $(THE_MAIN_DIR_PATH)/mak


PATH := $(THE_MAIN_BIN_DIR_PATH):$(PATH)




default: help
.PHONY: default




help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo
	@echo '	$$ make fetch'
	@echo
	@echo '	$$ make apply'
	@echo
.PHONY: help


apply:
	@apply.sh
.PHONY: apply


fetch:
	@fetch.sh
.PHONY: fetch




#include $(THE_MAIN_MAK_DIR_PATH)/*.mk
