ifeq ($(strip $(SimDataFormats/GeneratorProducts)),)
ALL_COMMONRULES += src_SimDataFormats_GeneratorProducts_src
src_SimDataFormats_GeneratorProducts_src_parent := SimDataFormats/GeneratorProducts
src_SimDataFormats_GeneratorProducts_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_SimDataFormats_GeneratorProducts_src,src/SimDataFormats/GeneratorProducts/src,LIBRARY))
SimDataFormatsGeneratorProducts := self/SimDataFormats/GeneratorProducts
SimDataFormats/GeneratorProducts := SimDataFormatsGeneratorProducts
SimDataFormatsGeneratorProducts_files := $(patsubst src/SimDataFormats/GeneratorProducts/src/%,%,$(wildcard $(foreach dir,src/SimDataFormats/GeneratorProducts/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
SimDataFormatsGeneratorProducts_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimDataFormats/GeneratorProducts/BuildFile
SimDataFormatsGeneratorProducts_LOC_USE := self cmssw FWCore/Utilities FWCore/MessageLogger DataFormats/Common hepmc rootrflx roothistmatrix
SimDataFormatsGeneratorProducts_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SimDataFormatsGeneratorProductsCapabilities,SimDataFormatsGeneratorProducts,$(SCRAMSTORENAME_LIB),src/SimDataFormats/GeneratorProducts/src))
SimDataFormatsGeneratorProducts_LCGDICTS  := x 
SimDataFormatsGeneratorProducts_PRE_INIT_FUNC += $$(eval $$(call LCGDict,SimDataFormatsGeneratorProducts,0,src/SimDataFormats/GeneratorProducts/src/classes.h,src/SimDataFormats/GeneratorProducts/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
SimDataFormatsGeneratorProducts_EX_LIB   := SimDataFormatsGeneratorProducts
SimDataFormatsGeneratorProducts_EX_USE   := $(foreach d,$(SimDataFormatsGeneratorProducts_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsGeneratorProducts_PACKAGE := self/src/SimDataFormats/GeneratorProducts/src
ALL_PRODS += SimDataFormatsGeneratorProducts
SimDataFormatsGeneratorProducts_CLASS := LIBRARY
SimDataFormats/GeneratorProducts_forbigobj+=SimDataFormatsGeneratorProducts
SimDataFormatsGeneratorProducts_INIT_FUNC        += $$(eval $$(call Library,SimDataFormatsGeneratorProducts,src/SimDataFormats/GeneratorProducts/src,src_SimDataFormats_GeneratorProducts_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
