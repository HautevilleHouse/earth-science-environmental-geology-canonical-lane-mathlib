import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure SedimentTransportPackage where
  erosionRates : Prop
  sedimentYield : Prop
  riverMorphology : Prop
  coastalDynamics : Prop

structure SedimentTransportEvidence (S : SedimentTransportPackage) where
  erosionRatesClosed : S.erosionRates
  sedimentYieldClosed : S.sedimentYield
  riverMorphologyClosed : S.riverMorphology
  coastalDynamicsClosed : S.coastalDynamics

def SedimentTransportClosed (S : SedimentTransportPackage) : Prop :=
  S.erosionRates ∧ S.sedimentYield ∧ S.riverMorphology ∧ S.coastalDynamics

theorem sediment_transport_closed_from_evidence (S : SedimentTransportPackage) (Ev : SedimentTransportEvidence S) : SedimentTransportClosed S := by
  exact And.intro Ev.erosionRatesClosed (And.intro Ev.sedimentYieldClosed (And.intro Ev.riverMorphologyClosed Ev.coastalDynamicsClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse
