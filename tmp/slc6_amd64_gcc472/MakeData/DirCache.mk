ALL_SUBSYSTEMS+=signal
subdirs_src_signal = src_signal_GPUFit src_signal_crab
ALL_PACKAGES += signal/GPUFit
subdirs_src_signal_GPUFit := src_signal_GPUFit_src src_signal_GPUFit_python src_signal_GPUFit_test
ALL_SUBSYSTEMS+=SimGeneral
subdirs_src_SimGeneral = src_SimGeneral_MixingModule
ALL_COMMONRULES += src_signal_GPUFit_test
src_signal_GPUFit_test_parent := signal/GPUFit
src_signal_GPUFit_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_signal_GPUFit_test,src/signal/GPUFit/test,TEST))
ifeq ($(strip $(PySimGeneralMixingModule)),)
PySimGeneralMixingModule := self/src/SimGeneral/MixingModule/python
src_SimGeneral_MixingModule_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/SimGeneral/MixingModule/python)
PySimGeneralMixingModule_files := $(patsubst src/SimGeneral/MixingModule/python/%,%,$(wildcard $(foreach dir,src/SimGeneral/MixingModule/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PySimGeneralMixingModule_LOC_USE := self cmssw 
PySimGeneralMixingModule_PACKAGE := self/src/SimGeneral/MixingModule/python
ALL_PRODS += PySimGeneralMixingModule
PySimGeneralMixingModule_CLASS := PYTHON
PySimGeneralMixingModule_INIT_FUNC        += $$(eval $$(call PythonProduct,PySimGeneralMixingModule,src/SimGeneral/MixingModule/python,src_SimGeneral_MixingModule_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PySimGeneralMixingModule,src/SimGeneral/MixingModule/python))
endif
ALL_COMMONRULES += src_SimGeneral_MixingModule_python
src_SimGeneral_MixingModule_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimGeneral_MixingModule_python,src/SimGeneral/MixingModule/python,PYTHON))
ALL_PACKAGES += SimDataFormats/GeneratorProducts
subdirs_src_SimDataFormats_GeneratorProducts := src_SimDataFormats_GeneratorProducts_src
ALL_COMMONRULES += src_SimGeneral_MixingModule_test
src_SimGeneral_MixingModule_test_parent := SimGeneral/MixingModule
src_SimGeneral_MixingModule_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimGeneral_MixingModule_test,src/SimGeneral/MixingModule/test,TEST))
ALL_PACKAGES += SimGeneral/MixingModule
subdirs_src_SimGeneral_MixingModule := src_SimGeneral_MixingModule_test src_SimGeneral_MixingModule_python src_SimGeneral_MixingModule_plugins
ALL_SUBSYSTEMS+=SimDataFormats
subdirs_src_SimDataFormats = src_SimDataFormats_GeneratorProducts
ALL_SUBSYSTEMS+=test
subdirs_src_test = src_test_CondorG_Small_Output_Brazos
ALL_PACKAGES += test/CondorG_Small_Output_Brazos
subdirs_src_test_CondorG_Small_Output_Brazos := src_test_CondorG_Small_Output_Brazos_res src_test_CondorG_Small_Output_Brazos_share src_test_CondorG_Small_Output_Brazos_log src_test_CondorG_Small_Output_Brazos_job
ALL_PACKAGES += signal/crab
subdirs_src_signal_crab := src_signal_crab_RAWSIM src_signal_crab_GENSIM
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
ALL_SUBSYSTEMS+=plots
subdirs_src_plots = 
