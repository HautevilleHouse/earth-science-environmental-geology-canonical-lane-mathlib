import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure SeaLevelReconstruction where
  sedimentCoreStratigraphy : Type u
  oxygenIsotopeRecord : Type v
  coralReconstructions : Type w
  tideGaugeData : Prop
  satelliteAltimetry : Prop
  holoceneBaseline : Prop

structure SeaLevelEvidence (S : SeaLevelReconstruction) where
  tideGaugeDataClosed : S.tideGaugeData
  satelliteAltimetryClosed : S.satelliteAltimetry
  holoceneBaselineClosed : S.holoceneBaseline

def SeaLevelClosed (S : SeaLevelReconstruction) : Prop :=
  S.tideGaugeData ∧ S.satelliteAltimetry ∧ S.holoceneBaseline

theorem sea_level_closed_from_evidence (S : SeaLevelReconstruction)
    (E : SeaLevelEvidence S) : SeaLevelClosed S := by
  exact And.intro E.tideGaugeDataClosed
    (And.intro E.satelliteAltimetryClosed E.holoceneBaselineClosed)

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse