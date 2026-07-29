import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyCanonicalLaneLean

structure TectonicGeomorphologyPackage where
  faultScarpDegradation : Prop
  fluvialResponseToUplift : Prop
  landscapeEvolutionModel : Prop
  topographicSteadyState : Prop

structure TectonicGeomorphologyEvidence (T : TectonicGeomorphologyPackage) where
  faultScarpDegradationClosed : T.faultScarpDegradation
  fluvialResponseToUpliftClosed : T.fluvialResponseToUplift
  landscapeEvolutionModelClosed : T.landscapeEvolutionModel
  topographicSteadyStateClosed : T.topographicSteadyState

def TectonicGeomorphologyClosed (T : TectonicGeomorphologyPackage) : Prop :=
  T.faultScarpDegradation ∧ T.fluvialResponseToUplift ∧ T.landscapeEvolutionModel ∧ T.topographicSteadyState

theorem tectonic_geomorphology_closed_from_evidence (T : TectonicGeomorphologyPackage) (Ev : TectonicGeomorphologyEvidence T) : TectonicGeomorphologyClosed T := by
  exact And.intro Ev.faultScarpDegradationClosed (And.intro Ev.fluvialResponseToUpliftClosed (And.intro Ev.landscapeEvolutionModelClosed Ev.topographicSteadyStateClosed))

end EarthScienceEnvironmentalGeologyCanonicalLaneLean
end HautevilleHouse
