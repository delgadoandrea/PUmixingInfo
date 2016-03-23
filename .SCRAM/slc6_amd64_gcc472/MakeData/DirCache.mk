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
ifeq ($(strip $(SimGeneralMixingModulePlugins)),)
SimGeneralMixingModulePlugins := self/src/SimGeneral/MixingModule/plugins
PLUGINS:=yes
SimGeneralMixingModulePlugins_files := $(patsubst src/SimGeneral/MixingModule/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/SimGeneral/MixingModule/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/SimGeneral/MixingModule/plugins/$(file). Please fix src/SimGeneral/MixingModule/plugins/BuildFile.))))
SimGeneralMixingModulePlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimGeneral/MixingModule/plugins/BuildFile
SimGeneralMixingModulePlugins_LOC_USE := self cmssw DataFormats/Common DataFormats/Provenance FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities FWCore/PluginManager Mixing/Base SimDataFormats/CaloHit SimDataFormats/CrossingFrame SimDataFormats/Track SimDataFormats/TrackingHit SimDataFormats/Vertex SimDataFormats/GeneratorProducts clhep CondFormats/DataRecord CondFormats/RunInfo CondCore/DBOutputService
SimGeneralMixingModulePlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SimGeneralMixingModulePlugins,SimGeneralMixingModulePlugins,$(SCRAMSTORENAME_LIB),src/SimGeneral/MixingModule/plugins))
SimGeneralMixingModulePlugins_PACKAGE := self/src/SimGeneral/MixingModule/plugins
ALL_PRODS += SimGeneralMixingModulePlugins
SimGeneralMixingModulePlugins_CLASS := PLUGINS
SimGeneral/MixingModule_forbigobj+=SimGeneralMixingModulePlugins
SimGeneralMixingModulePlugins_INIT_FUNC        += $$(eval $$(call Library,SimGeneralMixingModulePlugins,src/SimGeneral/MixingModule/plugins,src_SimGeneral_MixingModule_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,SimGeneralMixingModulePlugins,src/SimGeneral/MixingModule/plugins))
endif
ALL_COMMONRULES += src_SimGeneral_MixingModule_plugins
src_SimGeneral_MixingModule_plugins_parent := SimGeneral/MixingModule
src_SimGeneral_MixingModule_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimGeneral_MixingModule_plugins,src/SimGeneral/MixingModule/plugins,PLUGINS))
ifeq ($(strip $(signal/GPUFit)),)
ALL_COMMONRULES += src_signal_GPUFit_src
src_signal_GPUFit_src_parent := signal/GPUFit
src_signal_GPUFit_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_signal_GPUFit_src,src/signal/GPUFit/src,LIBRARY))
signalGPUFit := self/signal/GPUFit
signal/GPUFit := signalGPUFit
signalGPUFit_files := $(patsubst src/signal/GPUFit/src/%,%,$(wildcard $(foreach dir,src/signal/GPUFit/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
signalGPUFit_BuildFile    := $(WORKINGDIR)/cache/bf/src/signal/GPUFit/BuildFile
signalGPUFit_LOC_USE := self cmssw boost FWCore/PluginManager FWCore/ParameterSet FWCore/Framework FWCore/Utilities SimDataFormats/GeneratorProducts heppdt clhep root GeneratorInterface/Pythia6Interface GeneratorInterface/Core SimGeneral/HepPDTRecord DataFormats/GeometryVector DataFormats/GeometrySurface TrackPropagation/SteppingHelixPropagator MagneticField/Records TrackingTools/TrajectoryState TrackingTools/TrajectoryParametrization TrackingTools/Records FWCore/ServiceRegistry FastSimulation/Particle FastSimulation/BaseParticlePropagator TrackingTools/GeomPropagators DataFormats/HepMCCandidate DataFormats/EgammaReco rootmath rootcore FWCore/MessageLogger FWCore/MessageService CommonTools/UtilAlgos DataFormats/JetReco
signalGPUFit_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,signalGPUFit,signalGPUFit,$(SCRAMSTORENAME_LIB),src/signal/GPUFit/src))
signalGPUFit_PACKAGE := self/src/signal/GPUFit/src
ALL_PRODS += signalGPUFit
signalGPUFit_CLASS := LIBRARY
signal/GPUFit_forbigobj+=signalGPUFit
signalGPUFit_INIT_FUNC        += $$(eval $$(call Library,signalGPUFit,src/signal/GPUFit/src,src_signal_GPUFit_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
