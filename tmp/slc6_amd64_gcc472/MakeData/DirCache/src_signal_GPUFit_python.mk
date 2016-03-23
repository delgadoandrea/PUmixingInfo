ifeq ($(strip $(PysignalGPUFit)),)
PysignalGPUFit := self/src/signal/GPUFit/python
src_signal_GPUFit_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/signal/GPUFit/python)
PysignalGPUFit_files := $(patsubst src/signal/GPUFit/python/%,%,$(wildcard $(foreach dir,src/signal/GPUFit/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PysignalGPUFit_LOC_USE := self cmssw 
PysignalGPUFit_PACKAGE := self/src/signal/GPUFit/python
ALL_PRODS += PysignalGPUFit
PysignalGPUFit_CLASS := PYTHON
PysignalGPUFit_INIT_FUNC        += $$(eval $$(call PythonProduct,PysignalGPUFit,src/signal/GPUFit/python,src_signal_GPUFit_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PysignalGPUFit,src/signal/GPUFit/python))
endif
ALL_COMMONRULES += src_signal_GPUFit_python
src_signal_GPUFit_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_signal_GPUFit_python,src/signal/GPUFit/python,PYTHON))
