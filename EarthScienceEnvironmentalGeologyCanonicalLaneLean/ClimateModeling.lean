import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure ClimateModelingPackage where
  radiativeForcing : Prop
  oceanAtmosphereCoupling : Prop
  carbonCycleFeedbacks : Prop
  regionalDownscaling : Prop

structure ClimateModelingEvidence (M : ClimateModelingPackage) where
  radiativeForcingClosed : M.radiativeForcing
  oceanAtmosphereCouplingClosed : M.oceanAtmosphereCoupling
  carbonCycleFeedbacksClosed : M.carbonCycleFeedbacks
  regionalDownscalingClosed : M.regionalDownscaling

def ClimateModelingClosed (M : ClimateModelingPackage) : Prop :=
  M.radiativeForcing ∧ M.oceanAtmosphereCoupling ∧ M.carbonCycleFeedbacks ∧ M.regionalDownscaling

theorem climate_modeling_closed_from_evidence (M : ClimateModelingPackage) (E : ClimateModelingEvidence M) : ClimateModelingClosed M :=
  And.intro E.radiativeForcingClosed (And.intro E.oceanAtmosphereCouplingClosed (And.intro E.carbonCycleFeedbacksClosed E.regionalDownscalingClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse