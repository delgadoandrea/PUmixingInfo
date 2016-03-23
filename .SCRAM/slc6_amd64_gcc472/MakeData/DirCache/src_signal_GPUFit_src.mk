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
