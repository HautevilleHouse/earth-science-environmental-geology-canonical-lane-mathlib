import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure PaleoclimatologyPackage where
  proxyRecords : Prop
  iceCoreData : Prop
  sedimentCoreData : Prop
  orbitalForcing : Prop

structure PaleoclimatologyEvidence (P : PaleoclimatologyPackage) where
  proxyRecordsClosed : P.proxyRecords
  iceCoreDataClosed : P.iceCoreData
  sedimentCoreDataClosed : P.sedimentCoreData
  orbitalForcingClosed : P.orbitalForcing

def PaleoclimatologyClosed (P : PaleoclimatologyPackage) : Prop :=
  P.proxyRecords ∧ P.iceCoreData ∧ P.sedimentCoreData ∧ P.orbitalForcing

theorem paleoclimatology_closed_from_evidence (P : PaleoclimatologyPackage) (E : PaleoclimatologyEvidence P) : PaleoclimatologyClosed P :=
  And.intro E.proxyRecordsClosed (And.intro E.iceCoreDataClosed (And.intro E.sedimentCoreDataClosed E.orbitalForcingClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse