import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure EnvironmentalImpactModel where
  exposurePathways : Prop
  doseResponse : Prop
  riskCharacterization : Prop

structure EnvironmentalImpactModelEvidence (E : EnvironmentalImpactModel) where
  exposurePathwaysClosed : E.exposurePathways
  doseResponseClosed : E.doseResponse
  riskCharacterizationClosed : E.riskCharacterization

def EnvironmentalImpactModelClosed (E : EnvironmentalImpactModel) : Prop :=
  E.exposurePathways ∧ E.doseResponse ∧ E.riskCharacterization

theorem environmental_impact_model_closed_from_evidence (E : EnvironmentalImpactModel) (Ev : EnvironmentalImpactModelEvidence E) : EnvironmentalImpactModelClosed E := by
  exact And.intro Ev.exposurePathwaysClosed (And.intro Ev.doseResponseClosed Ev.riskCharacterizationClosed)

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse