# CUTEST_DIR = .
# # \kernel/third/unit-test/cutest

# SRC += $(CUTEST_DIR)/CuTest.c

# CFLAGS += -I$(SDKPATH)/$(CUTEST_DIR)

CUTEST_DIR = kernel/third/unit-test/cutest

SRC += $(CUTEST_DIR)/CuTest.c

CFLAGS += -I$(SDKPATH)/$(CUTEST_DIR)
