import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure WaterQualityPackage where
  physicalParameters : Prop
  chemicalParameters : Prop
  biologicalIndicators : Prop
  pollutionSources : Prop

structure WaterQualityEvidence (W : WaterQualityPackage) where
  physicalParametersClosed : W.physicalParameters
  chemicalParametersClosed : W.chemicalParameters
  biologicalIndicatorsClosed : W.biologicalIndicators
  pollutionSourcesClosed : W.pollutionSources

def WaterQualityClosed (W : WaterQualityPackage) : Prop :=
  W.physicalParameters ∧ W.chemicalParameters ∧ W.biologicalIndicators ∧ W.pollutionSources

theorem water_quality_closed_from_evidence (W : WaterQualityPackage) (E : WaterQualityEvidence W) : WaterQualityClosed W :=
  And.intro E.physicalParametersClosed (And.intro E.chemicalParametersClosed (And.intro E.biologicalIndicatorsClosed E.pollutionSourcesClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse