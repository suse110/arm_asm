PROJS = lm3s811/main \
		stm32f4xx/main
# SDKPATH = $(abspath $(shell pwd))
SDKPATH=J:/document/doc/src/os/toyos/src/gnu/clion-stm32/arm_asm/main


# 一般情况下，linux是有 LANG这个环境变量 而window没有的，所有通过  ifeq ($(LANG),)  是否为空即可判断操作系统。
# windows情况下，一般情况是要用cl.exe 编译的，所以要用if 之下 else之上的块。
# 但是，不一般的情况，比如装个matlab，系统会增加环境变量Lang ，于是， gmake all出错了。
# 判断方法  echo %LANG%   解决方案： set LANG=  (只在当前cmd窗口有效)  
ifneq ($(LANG),)
#linux
.DEFAULT_GOAL := all
all :
	@echo "SDKPATH=  "$(SDKPATH)
	@echo "begin compile ALL exercises for assembly samples in linux......................."
	@for proj in $(PROJS); do $(MAKE)  SDKPATH=$(SDKPATH)  -C ./project/$$proj/GCC || exit "$$?"; done
	@echo "compile ALL exercises finished successfully! ......"
.PHONY : clean
clean:
	@for proj in $(PROJS); do $(MAKE) SDKPATH=$(SDKPATH) -C ./project/$$proj/GCC clean|| exit "$$?"; done
else
#windows
.DEFAULT_GOAL := all
all :
	@echo "SDKPATH=  "$(SDKPATH)
	@echo "begin compile ALL exercises for assembly samples in windows......................."
	@for %%proj in ($(PROJS)) do $(MAKE) SDKPATH=$(SDKPATH) -C ./project/%%proj/GCC || exit "$$?"
	@echo "compile ALL exercises finished successfully! ......"
.PHONY : clean
clean:
	@for %%proj in ($(PROJS)) do $(MAKE) SDKPATH=$(SDKPATH) -C ./project/%%proj/GCC clean|| exit "$$?"
endif

st:
	$(MAKE) -C ./project/stm32f4xx/main/GCC 
stc:
	$(MAKE) -C ./project/stm32f4xx/main/GCC clean
