# add test tool for rockchip platform
# Author : Hans Yang <yhx@rock-chips.com>

ROCKCHIP_TEST_VERSION = 20190107
ROCKCHIP_TEST_SITE_METHOD = local
ROCKCHIP_TEST_SITE = $(TOPDIR)/package/rockchip/rockchip_test/src

define ROCKCHIP_TEST_INSTALL_TARGET_CMDS
    cp -rf  $(@D)/rockchip_test  ${TARGET_DIR}/
    cp -rf $(@D)/rockchip_test_${ARCH}/* ${TARGET_DIR}/rockchip_test/ || true
endef

$(eval $(generic-package))
