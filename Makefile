SECTIONS = \
	test \
	main 


# $(SECTIONS_Arithmetic) \
# $(SECTIONS_Logical) \
# $(SECTIONS_Shifting) \
# $(SECTIONS_Load_Store) \
# $(SECTIONS_Branch) \
# $(SECTIONS_Jump) \
# $(SECTIONS_CallingConventions) \
# $(SECTIONS_others)

# 一般情况下，linux是有 LANG这个环境变量 而window没有的，所有通过  ifeq ($(LANG),)  是否为空即可判断操作系统。
# windows情况下，一般情况是要用cl.exe 编译的，所以要用if 之下 else之上的块。
# 但是，不一般的情况，比如装个matlab，系统会增加环境变量Lang ，于是， gmake all出错了。
# 判断方法  echo %LANG%   解决方案： set LANG=  (只在当前cmd窗口有效)  
ifneq ($(LANG),)
#linux
.DEFAULT_GOAL := all
all :
	@echo "begin compile ALL exercises for assembly samples ......................."
	@for dir in $(SECTIONS); do $(MAKE) -C $$dir || exit "$$?"; done
	@echo "compile ALL exercises finished successfully! ......"
.PHONY : clean
clean:
	@for dir in $(SECTIONS); do $(MAKE) -C $$dir clean || exit "$$?"; done
else
#windows
.DEFAULT_GOAL := all
all :
	@echo "begin compile ALL exercises for assembly samples ......................."
	@for %%d in ($(SECTIONS)) do $(MAKE) -C %%d || exit "$$?"
	@echo "compile ALL exercises finished successfully! ......"
.PHONY : clean
clean:
	@for %%d in ($(SECTIONS)) do $(MAKE) -C %%d clean || exit "$$?"
endif