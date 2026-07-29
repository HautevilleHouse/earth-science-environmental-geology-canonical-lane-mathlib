import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure GeochemicalCycle where
  reservoirDynamics : Prop
  elementalFluxesBalanced : Prop
  residenceTimesQuantified : Prop

structure GeochemicalCycleEvidence (C : GeochemicalCycle) where
  reservoirDynamicsClosed : C.reservoirDynamics
  elementalFluxesBalancedClosed : C.elementalFluxesBalanced
  residenceTimesQuantifiedClosed : C.residenceTimesQuantified

def GeochemicalCycleClosed (C : GeochemicalCycle) : Prop :=
  C.reservoirDynamics ∧ C.elementalFluxesBalanced ∧ C.residenceTimesQuantified

theorem geochemical_cycle_closed_from_evidence (C : GeochemicalCycle) (E : GeochemicalCycleEvidence C) : GeochemicalCycleClosed C := by
  exact And.intro E.reservoirDynamicsClosed (And.intro E.elementalFluxesBalancedClosed E.residenceTimesQuantifiedClosed)

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse