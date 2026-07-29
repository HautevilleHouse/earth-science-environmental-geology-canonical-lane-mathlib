import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure PaleoclimateRecordsPackage where
  iceCoreProxies : Prop
  sedimentCoreAnalysis : Prop
  isotopeStratigraphy : Prop
  climateForcingReconstruction : Prop

structure PaleoclimateRecordsEvidence (P : PaleoclimateRecordsPackage) where
  iceCoreProxiesClosed : P.iceCoreProxies
  sedimentCoreAnalysisClosed : P.sedimentCoreAnalysis
  isotopeStratigraphyClosed : P.isotopeStratigraphy
  climateForcingReconstructionClosed : P.climateForcingReconstruction

def PaleoclimateRecordsClosed (P : PaleoclimateRecordsPackage) : Prop :=
  P.iceCoreProxies ∧ P.sedimentCoreAnalysis ∧ P.isotopeStratigraphy ∧ P.climateForcingReconstruction

theorem paleoclimate_records_closed_from_evidence (P : PaleoclimateRecordsPackage) (Ev : PaleoclimateRecordsEvidence P) : PaleoclimateRecordsClosed P := by
  exact And.intro Ev.iceCoreProxiesClosed (And.intro Ev.sedimentCoreAnalysisClosed (And.intro Ev.isotopeStratigraphyClosed Ev.climateForcingReconstructionClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse
