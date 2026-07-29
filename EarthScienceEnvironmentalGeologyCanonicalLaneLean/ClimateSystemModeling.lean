import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure ClimateSystemPackage where
  atmosphereModel : Type u
  oceanModel : Type v
  landSurfaceModel : Type w
  radiativeForcing : Prop
  carbonCycle : Prop
  coupledDynamics : Prop
  parameterizationUncertainty : Prop

structure ClimateSystemEvidence (C : ClimateSystemPackage) where
  radiativeForcingClosed : C.radiativeForcing
  carbonCycleClosed : C.carbonCycle
  coupledDynamicsClosed : C.coupledDynamics
  parameterizationUncertaintyClosed : C.parameterizationUncertainty

def ClimateSystemClosed (C : ClimateSystemPackage) : Prop :=
  C.radiativeForcing ∧ C.carbonCycle ∧ C.coupledDynamics ∧ C.parameterizationUncertainty

theorem climate_system_closed_from_evidence (C : ClimateSystemPackage) (E : ClimateSystemEvidence C) :
    ClimateSystemClosed C := by
  exact And.intro E.radiativeForcingClosed
    (And.intro E.carbonCycleClosed
      (And.intro E.coupledDynamicsClosed E.parameterizationUncertaintyClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse