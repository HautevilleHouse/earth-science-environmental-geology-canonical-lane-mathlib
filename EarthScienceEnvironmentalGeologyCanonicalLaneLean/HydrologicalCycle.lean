import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure HydrologicalCycle where
  precipitationEvaporationBalance : Prop
  groundwaterRecharge : Prop
  surfaceRunoffModeled : Prop

structure HydrologicalCycleEvidence (H : HydrologicalCycle) where
  precipitationEvaporationBalanceClosed : H.precipitationEvaporationBalance
  groundwaterRechargeClosed : H.groundwaterRecharge
  surfaceRunoffModeledClosed : H.surfaceRunoffModeled

def HydrologicalCycleClosed (H : HydrologicalCycle) : Prop :=
  H.precipitationEvaporationBalance ∧ H.groundwaterRecharge ∧ H.surfaceRunoffModeled

theorem hydrological_cycle_closed_from_evidence (H : HydrologicalCycle) (E : HydrologicalCycleEvidence H) : HydrologicalCycleClosed H := by
  exact And.intro E.precipitationEvaporationBalanceClosed (And.intro E.groundwaterRechargeClosed E.surfaceRunoffModeledClosed)

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse