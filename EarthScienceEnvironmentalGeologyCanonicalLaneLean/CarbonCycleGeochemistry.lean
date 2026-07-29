import canonicalLaneMathlib.AdmissibleClass

/-!
# Carbon Cycle Geochemistry Package

This module defines the admissible-class bridge for the global carbon cycle,
a key component of Earth Science Environmental Geology.
-/

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure CarbonCyclePackage where
  reservoirFluxes : Prop
  isotopicFractionation : Prop
  timescales : Prop
  anthropogenicPerturbation : Prop

structure CarbonCycleEvidence (C : CarbonCyclePackage) where
  reservoirFluxesClosed : C.reservoirFluxes
  isotopicFractionationClosed : C.isotopicFractionation
  timescalesClosed : C.timescales
  anthropogenicPerturbationClosed : C.anthropogenicPerturbation

def CarbonCycleClosed (C : CarbonCyclePackage) : Prop :=
  C.reservoirFluxes ∧ C.isotopicFractionation ∧ C.timescales ∧ C.anthropogenicPerturbation

theorem carbon_cycle_closed_from_evidence (C : CarbonCyclePackage)
    (Ev : CarbonCycleEvidence C) : CarbonCycleClosed C := by
  exact And.intro Ev.reservoirFluxesClosed
    (And.intro Ev.isotopicFractionationClosed
      (And.intro Ev.timescalesClosed Ev.anthropogenicPerturbationClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse