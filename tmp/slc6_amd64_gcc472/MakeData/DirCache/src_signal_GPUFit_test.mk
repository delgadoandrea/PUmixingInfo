ALL_COMMONRULES += src_signal_GPUFit_test
src_signal_GPUFit_test_parent := signal/GPUFit
src_signal_GPUFit_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_signal_GPUFit_test,src/signal/GPUFit/test,TEST))
