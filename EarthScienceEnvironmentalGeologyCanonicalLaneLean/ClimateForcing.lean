import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure ClimateForcing where
  radiativeForcingBalance : Prop
  feedbackMechanisms : Prop
  timescaleSeparation : Prop

structure ClimateForcingEvidence (C : ClimateForcing) where
  radiativeForcingBalanceClosed : C.radiativeForcingBalance
  feedbackMechanismsClosed : C.feedbackMechanisms
  timescaleSeparationClosed : C.timescaleSeparation

def ClimateForcingClosed (C : ClimateForcing) : Prop :=
  C.radiativeForcingBalance ∧ C.feedbackMechanisms ∧ C.timescaleSeparation

theorem climate_forcing_closed_from_evidence (C : ClimateForcing) (E : ClimateForcingEvidence C) : ClimateForcingClosed C := by
  exact And.intro E.radiativeForcingBalanceClosed (And.intro E.feedbackMechanismsClosed E.timescaleSeparationClosed)

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse