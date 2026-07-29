import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure ClimateBaselinePackage where
  temperatureRecord : Type u
  co2Concentration : Type v
  iceCoreData : Type w
  modernInstrumentalData : Prop
  paleoProxyCalibration : Prop
  baselinePeriodDefined : Prop

structure ClimateBaselineEvidence (C : ClimateBaselinePackage) where
  modernInstrumentalDataClosed : C.modernInstrumentalData
  paleoProxyCalibrationClosed : C.paleoProxyCalibration
  baselinePeriodDefinedClosed : C.baselinePeriodDefined

def ClimateBaselineClosed (C : ClimateBaselinePackage) : Prop :=
  C.modernInstrumentalData ∧ C.paleoProxyCalibration ∧ C.baselinePeriodDefined

theorem climate_baseline_closed_from_evidence (C : ClimateBaselinePackage)
    (E : ClimateBaselineEvidence C) : ClimateBaselineClosed C := by
  exact And.intro E.modernInstrumentalDataClosed
    (And.intro E.paleoProxyCalibrationClosed E.baselinePeriodDefinedClosed)

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse