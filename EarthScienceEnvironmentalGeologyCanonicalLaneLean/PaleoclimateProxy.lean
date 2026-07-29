import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure PaleoclimateProxy where
  proxyCalibration : Prop
  temporalResolution : Prop
  climateSignalExtracted : Prop

structure PaleoclimateProxyEvidence (P : PaleoclimateProxy) where
  proxyCalibrationClosed : P.proxyCalibration
  temporalResolutionClosed : P.temporalResolution
  climateSignalExtractedClosed : P.climateSignalExtracted

def PaleoclimateProxyClosed (P : PaleoclimateProxy) : Prop :=
  P.proxyCalibration ∧ P.temporalResolution ∧ P.climateSignalExtracted

theorem paleoclimate_proxy_closed_from_evidence (P : PaleoclimateProxy) (E : PaleoclimateProxyEvidence P) : PaleoclimateProxyClosed P := by
  exact And.intro E.proxyCalibrationClosed (And.intro E.temporalResolutionClosed E.climateSignalExtractedClosed)

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse