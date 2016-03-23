
// This file has been generated by genreflex with the --capabilities option
static  const char* clnames[] = {
//--Begin classes
  "LCGReflex/GenEventInfoProduct",
  "LCGReflex/LHEEventProduct",
  "LCGReflex/LHEXMLStringProduct",
  "LCGReflex/LHERunInfoProduct",
  "LCGReflex/GenFilterInfo",
  "LCGReflex/GenRunInfoProduct",
  "LCGReflex/GenLumiInfoProduct",
  "LCGReflex/gen::PdfInfo",
  "LCGReflex/std::auto_ptr<gen::PdfInfo>",
  "LCGReflex/std::iterator<std::forward_iterator_tag,HepMC::GenParticle*,long,HepMC::GenParticle**,HepMC::GenParticle*&>",
  "LCGReflex/std::iterator<std::forward_iterator_tag,HepMC::GenVertex*,long,HepMC::GenVertex**,HepMC::GenVertex*&>",
  "LCGReflex/std::pair<const int,HepMC::GenVertex*>",
  "LCGReflex/std::pair<const int,HepMC::GenParticle*>",
  "LCGReflex/gen::WeightsInfo",
  "LCGReflex/std::vector<gen::WeightsInfo>",
  "LCGReflex/std::vector<const edm::HepMCProduct*>",
  "LCGReflex/std::vector<HepMC::GenParticle*>",
  "LCGReflex/GenLumiInfoProduct::ProcessInfo",
  "LCGReflex/std::vector<GenLumiInfoProduct::ProcessInfo>",
  "LCGReflex/LHERunInfoProduct::Header",
  "LCGReflex/std::vector<LHERunInfoProduct::Header>",
  "LCGReflex/lhef::HEPEUP",
  "LCGReflex/lhef::HEPEUP::FiveVector",
  "LCGReflex/std::vector<lhef::HEPEUP::FiveVector>",
  "LCGReflex/std::map<int,HepMC::GenVertex*,std::greater<int> >",
  "LCGReflex/std::map<int,HepMC::GenParticle*>",
  "LCGReflex/std::map<int,HepMC::GenVertex*>",
  "LCGReflex/HepMC::PdfInfo",
  "LCGReflex/HepMC::GenCrossSection",
  "LCGReflex/HepMC::GenParticle",
  "LCGReflex/HepMC::Flow",
  "LCGReflex/HepMC::FourVector",
  "LCGReflex/HepMC::HeavyIon",
  "LCGReflex/HepMC::WeightContainer",
  "LCGReflex/HepMC::Polarization",
  "LCGReflex/HepMC::GenVertex",
  "LCGReflex/HepMC::GenEvent",
  "LCGReflex/edm::RefVector<edm::HepMCProduct,HepMC::GenVertex,edm::refhelper::FindTrait<edm::HepMCProduct,HepMC::GenVertex>::Find>",
  "LCGReflex/edm::RefVector<edm::HepMCProduct,HepMC::GenParticle,edm::refhelper::FindTrait<edm::HepMCProduct,HepMC::GenParticle>::Find>",
  "LCGReflex/edm::Wrapper<LHEXMLStringProduct>",
  "LCGReflex/edm::Wrapper<LHEEventProduct>",
  "LCGReflex/edm::Wrapper<LHERunInfoProduct>",
  "LCGReflex/edm::Wrapper<GenLumiInfoProduct>",
  "LCGReflex/edm::Wrapper<GenEventInfoProduct>",
  "LCGReflex/edm::Wrapper<GenFilterInfo>",
  "LCGReflex/edm::Wrapper<GenRunInfoProduct>",
  "LCGReflex/edm::HepMCProduct",
  "LCGReflex/edm::Wrapper<edm::HepMCProduct>",
  "LCGReflex/edm::Ref<edm::HepMCProduct,HepMC::GenVertex,edm::refhelper::FindTrait<edm::HepMCProduct,HepMC::GenVertex>::Find>",
  "LCGReflex/edm::Ref<edm::HepMCProduct,HepMC::GenParticle,edm::refhelper::FindTrait<edm::HepMCProduct,HepMC::GenParticle>::Find>",
  "LCGReflex/lhef::HEPRUP",
  "LCGReflex/GenRunInfoProduct::XSec",
  "LCGReflex/GenLumiInfoProduct::XSec",
  "LCGReflex/GenLumiInfoProduct::FinalStat",
  "LCGReflex/HepMC::GenEvent::vertex_const_iterator",
  "LCGReflex/HepMC::GenEvent::vertex_iterator",
  "LCGReflex/HepMC::GenEvent::particle_const_iterator",
  "LCGReflex/HepMC::GenEvent::particle_iterator",
//--End   classes
//--Final End
};

extern "C" void SEAL_CAPABILITIES (const char**& names, int& n )
{ 
  names = clnames;
  n = sizeof(clnames)/sizeof(char*);
}

