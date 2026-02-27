GIT_DIR := $(shell git rev-parse --show-toplevel)
include $(GIT_DIR)/device.sh

all:

reset: extractions/$(FW_RESET_FILENAME).extracted

bin: extractions/$(FW_FILENAME).extracted

update: extractions/$(FW_UPDATE_FILENAME).extracted

extractions/$(FW_RESET_FILENAME).extracted:
	binwalk --log=binwalk.reset.json -Me $(GIT_DIR)/$(FW_RESET_PATH) >> $(GIT_DIR)/log/binwalk.reset.log
	find extractions/$(FW_RESET_FILENAME).extracted -name "*.bin" | LANG=C xargs -L 1 bin2hex

extractions/$(FW_FILENAME).extracted:
	binwalk --log=binwalk.json -Me $(GIT_DIR)/$(FW_PATH) >> $(GIT_DIR)/log/binwalk.log
	find extractions/$(FW_FILENAME).extracted -name "*.bin" | LANG=C xargs -L 1 bin2hex

extractions/$(FW_UPDATE_FILENAME).extracted:
	binwalk --log=binwalk.update.json -Me $(GIT_DIR)/$(FW_UPDATE_PATH) >> $(GIT_DIR)/log/binwalk.update.log
	find extractions/$(FW_UPDATE_FILENAME).extracted -name "*.bin" | LANG=C xargs -L 1 bin2hex
