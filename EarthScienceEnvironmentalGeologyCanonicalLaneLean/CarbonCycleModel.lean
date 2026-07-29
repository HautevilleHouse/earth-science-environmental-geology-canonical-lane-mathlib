import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure CarbonCycleModel where
  atmosphereCarbon : Type u
  oceanCarbon : Type v
  terrestrialCarbon : Type w
  deepGeologicCarbon : Type x
  fluxBetweenReservoirs : Prop
  equilibriumState : Prop
  anthropogenicPerturbation : Prop

structure CarbonCycleEvidence (C : CarbonCycleModel) where
  fluxBetweenReservoirsClosed : C.fluxBetweenReservoirs
  equilibriumStateClosed : C.equilibriumState
  anthropogenicPerturbationClosed : C.anthropogenicPerturbation

def CarbonCycleClosed (C : CarbonCycleModel) : Prop :=
  C.fluxBetweenReservoirs ∧ C.equilibriumState ∧ C.anthropogenicPerturbation

theorem carbon_cycle_closed_from_evidence (C : CarbonCycleModel)
    (E : CarbonCycleEvidence C) : CarbonCycleClosed C := by
  exact And.intro E.fluxBetweenReservoirsClosed
    (And.intro E.equilibriumStateClosed E.anthropogenicPerturbationClosed)

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse